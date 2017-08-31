public extension VKAPI {
    public enum Video: APIMethod {
        case get(Parameters)
        case edit(Parameters)
        case add(Parameters)
        case save(Parameters)
        case delete(Parameters)
        case restore(Parameters)
        case search(Parameters)
        case getUserVideos(Parameters)
        case getAlbums(Parameters)
        case getAlbumById(Parameters)
        case addAlbum(Parameters)
        case deleteAlbum(Parameters)
        case moveToAlbum(Parameters)
        case addToAlbum(Parameters)
        case removeFromAlbum(Parameters)
        case getAlbumsByVideo(Parameters)
        case getComments(Parameters)
        case createComment(Parameters)
        case deleteComment(Parameters)
        case restoreComment(Parameters)
        case editComment(Parameters)
        case getTags(Parameters)
        case putTag(Parameters)
        case removeTag(Parameters)
        case getNewTags(Parameters)
        case report(Parameters)
        case reportComment(Parameters)
        case getCatalog(Parameters)
        case getCatalogSection(Parameters)
        case hideCatalogSection(Parameters)
    }
}
