// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "controllers";

document.addEventListener("DOMContentLoaded", function () {
  const commentableText = document.getElementById("commentable-text");
  const highlightableText = document.getElementById("highlightable-text");
  const commentForm = document.getElementById("comment-form");
  const commentFormText = document.querySelector(".comment-form textarea");
  const commentsContainer = document.getElementById("comments");

  // ハイライトされたテキストの置換
  highlightedTexts.forEach(function (highlightedText) {
    if (highlightedText) {
      const text = highlightableText.innerHTML;
      const newText = text.replace(
        new RegExp(highlightedText, "g"),
        '<span class="highlighted">' + highlightedText + "</span>"
      );
      highlightableText.innerHTML = newText;
    }
  });

  const highlightedElements = document.querySelectorAll("span.highlighted");
  const comments = document.querySelectorAll("div.comment");

  // キャンバスの作成と描画
  const canvas = document.createElement("canvas");
  canvas.width = document.body.clientWidth;
  canvas.height = window.innerHeight;
  const ctx = canvas.getContext("2d");

  highlightedElements.forEach(function (highlightedElement, index) {
    if (highlightedElement) {
      var highlightedElementRect = highlightedElement.getBoundingClientRect();
      var commentRect = comments[index].getBoundingClientRect();

      ctx.beginPath();
      ctx.moveTo(highlightedElementRect.left, highlightedElementRect.bottom);
      ctx.lineTo(commentRect.left, commentRect.bottom);
      ctx.strokeStyle = "#14ccf4";
      ctx.lineWidth = 2;
      ctx.stroke();
    }
  });

  document.body.appendChild(canvas);

  commentableText.addEventListener("contextmenu", function (e) {
    e.preventDefault();

    const selection = window.getSelection();
    const range = selection.getRangeAt(0);
    if (range) {
      var selectedText = range.toString();

      var startOffset = range.startOffset;
      var endOffset = range.endOffset;

      document.getElementById("start-offset-field").value = startOffset;
      document.getElementById("end-offset-field").value = endOffset;

      document.getElementById("selectedText").textContent =
        "選択したテキスト: " + selectedText;
      document.getElementById("startOffset").textContent =
        "開始オフセット: " + startOffset;
      document.getElementById("endOffset").textContent =
        "終了オフセット: " + endOffset;
    }

    const selection_str = window.getSelection().toString();
    if (selection_str) {
      commentForm.style.display = "block";
      commentFormText.value = selection_str;
      commentFormText.focus();
      commentFormText.setSelectionRange(0, selection_str.length);
      document.querySelector('input[name="comment[highlighted_text]"]').value =
        selection_str;
    }
  });

  commentForm.addEventListener("submit", async function (e) {
    e.preventDefault();

    const formData = new FormData(this);
    const response = await fetch("/comments", {
      method: "POST",
      body: formData,
    });

    if (response.ok) {
      commentForm.style.display = "none";
      commentFormText.value = "";
      const commentData = await response.json();
      const commentDiv = document.createElement("div");
      commentDiv.classList.add("comment");
      commentDiv.innerHTML = `<p>${commentData.text}</p><p>${commentData.highlighted_text}</p>`;
      commentsContainer.appendChild(commentDiv);
    }
  });

  var editButtons = document.querySelectorAll(".btn.btn-outline-secondary");

  editButtons.forEach(function (editButton) {
    editButton.addEventListener("click", function () {
      var commentEditForm = this.previousElementSibling;
      var commentShow = this.previousElementSibling.previousElementSibling;

      if (
        commentEditForm.style.display === "none" ||
        commentEditForm.style.display === ""
      ) {
        commentEditForm.style.display = "block";
        commentShow.style.display = "none";
        this.textContent = "キャンセル";
      } else {
        commentEditForm.style.display = "none";
        commentShow.style.display = "block";
        this.textContent = "編集";
      }
    });
  });
});
