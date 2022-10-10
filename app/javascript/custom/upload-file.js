function displayUploadedImage (event, hideElementSelector, displayImgParentSelector) {
    if (!event || !event.target.files[0]) return;

    const HIDDEN_CLASS_NAME = "hidden";
    const uploadedURL = URL.createObjectURL(event.target.files[0]);
    
    const img = document.querySelector(`${displayImgParentSelector} img`);
    img.setAttribute("src", uploadedURL);
    
    const imgParent = document.querySelector(displayImgParentSelector);
    imgParent.classList.remove(HIDDEN_CLASS_NAME);
    
    const hideElement = document.querySelector(hideElementSelector);
    const hideElementClasses = hideElement.classList;
    
    if (!hideElementClasses.contains(HIDDEN_CLASS_NAME)) {
        hideElementClasses.add(HIDDEN_CLASS_NAME)
    }
}

export const UploadImageHandler = {
    displayUploadedImage
}