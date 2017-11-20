.class public Lcom/google/android/wearable/app/DataMapToHtml;
.super Ljava/lang/Object;
.source "DataMapToHtml.java"


# static fields
.field private static final AUTHOR_HEADER_AVATAR:Ljava/lang/String; = ".header > .avatar {width: 60px;height: 60px;border-radius: 30px;border: 2px solid rgba(255, 255, 255, 0.7);background-color: rgba(255, 255, 255 0.2);float: left;}"

.field private static final AUTHOR_HEADER_CLASS:Ljava/lang/String; = ".header {height: 64px;clear: both;position: relative;top: 40px;margin: 0px 40px;}"

.field private static final AUTHOR_HEADER_TEXT:Ljava/lang/String; = ".header > .text {width: 496px;height: 64px;display: table-cell;vertical-align: middle;color: #808080;}"

.field private static final AUTHOR_HEADER_TEXT_P:Ljava/lang/String; = ".header > .text > p {max-height: 64px;-webkit-line-clamp: 1;display: -webkit-box;-webkit-box-orient: vertical;overflow: hidden;top: 0px !important;margin-left: 24px;}"

.field private static final AUTHOR_SECTION:Ljava/lang/String; = "section {top: 82px;}"

.field static final AUTHOR_STYLE:Ljava/lang/String; = "<style>.header {height: 64px;clear: both;position: relative;top: 40px;margin: 0px 40px;}.header > .avatar {width: 60px;height: 60px;border-radius: 30px;border: 2px solid rgba(255, 255, 255, 0.7);background-color: rgba(255, 255, 255 0.2);float: left;}.header > .text {width: 496px;height: 64px;display: table-cell;vertical-align: middle;color: #808080;}.header > .text > p {max-height: 64px;-webkit-line-clamp: 1;display: -webkit-box;-webkit-box-orient: vertical;overflow: hidden;top: 0px !important;margin-left: 24px;}section {top: 82px;}</style>"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final AUTO_OVERFLOW:Ljava/lang/String; = "auto-overflow"

.field private static final AUTO_PAGINATE:Ljava/lang/String; = "auto-paginate"

.field private static final COVER_ONLY:Ljava/lang/String; = "cover-only"

.field private static final COVER_OVERFLOW:Ljava/lang/String; = "cover-overflow"

.field private static final DEFAULT_FIGURE_BACKGROUND_COLOR:I

.field private static final GRADIENT_HTML:Ljava/lang/String; = "<div class=\"overlay-gradient-medium\"></div>"

.field private static final MOSAIC_FOOTER_STYLE:Ljava/lang/String; = "margin-left: 20px; margin-right: 20px; text-align: center;"

.field private static final PHOTO:Ljava/lang/String; = "photo"

.field static final PHOTO_COVER_CSS:Ljava/lang/String; = "<style>article.photo table {height: 100%;}.avatar {vertical-align: middle;}.avatar > img {width: 60px;height: 60px;border-radius: 30px;background-color: rgba(255, 255, 255 0.2);margin-right: 24px;}td.text {padding: 0px;vertical-align: middle;width: 100%;}td.text > div {top: 0px !important;}article.photo > section {top: 150px;}</style>"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TEXT_AUTO_SIZE:Ljava/lang/String; = "text-auto-size"


# instance fields
.field private timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private final wearAssetHelper:Lcom/google/android/wearable/app/WearAssetHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x22

    .line 37
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/android/wearable/app/DataMapToHtml;->DEFAULT_FIGURE_BACKGROUND_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/wearable/app/WearAssetHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .param p1, "wearAssetHelper"    # Lcom/google/android/wearable/app/WearAssetHelper;
    .param p2, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/google/android/wearable/app/DataMapToHtml;->wearAssetHelper:Lcom/google/android/wearable/app/WearAssetHelper;

    .line 136
    iput-object p2, p0, Lcom/google/android/wearable/app/DataMapToHtml;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 137
    return-void
.end method

.method private addHtmlForPageData(Ljava/lang/StringBuilder;Landroid/os/Bundle;ZLjava/lang/String;)V
    .locals 1
    .param p1, "html"    # Ljava/lang/StringBuilder;
    .param p2, "pageData"    # Landroid/os/Bundle;
    .param p3, "coverOverflow"    # Z
    .param p4, "backgroundAttachmentId"    # Ljava/lang/String;

    .prologue
    .line 384
    invoke-virtual {p0, p2}, Lcom/google/android/wearable/app/DataMapToHtml;->isInboxStyle(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/wearable/app/DataMapToHtml;->addHtmlForList(Ljava/lang/StringBuilder;Landroid/os/Bundle;Z)V

    .line 394
    :goto_0
    return-void

    .line 389
    :cond_0
    invoke-virtual {p0, p1, p4}, Lcom/google/android/wearable/app/DataMapToHtml;->addHtmlForBackground(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/wearable/app/DataMapToHtml;->addHtmlForText(Ljava/lang/StringBuilder;Landroid/os/Bundle;Z)V

    goto :goto_0
.end method

.method static colorToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "color"    # I

    .prologue
    .line 525
    const-string v0, "#%02X%02X%02X"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method addHtmlForAuthorCoverPage(Ljava/lang/StringBuilder;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .param p1, "html"    # Ljava/lang/StringBuilder;
    .param p2, "pageData"    # Landroid/os/Bundle;
    .param p3, "backgroundId"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 253
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 256
    const-string v1, "<style>.header {height: 64px;clear: both;position: relative;top: 40px;margin: 0px 40px;}.header > .avatar {width: 60px;height: 60px;border-radius: 30px;border: 2px solid rgba(255, 255, 255, 0.7);background-color: rgba(255, 255, 255 0.2);float: left;}.header > .text {width: 496px;height: 64px;display: table-cell;vertical-align: middle;color: #808080;}.header > .text > p {max-height: 64px;-webkit-line-clamp: 1;display: -webkit-box;-webkit-box-orient: vertical;overflow: hidden;top: 0px !important;margin-left: 24px;}section {top: 82px;}</style>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "cover-only"

    aput-object v2, v1, v4

    invoke-virtual {p0, p1, v1}, Lcom/google/android/wearable/app/DataMapToHtml;->appendOpenArticleWithClasses(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 261
    invoke-static {p2}, Lcom/google/android/wearable/app/GlassDataListener;->getTitle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "title":Ljava/lang/String;
    const-string v1, "<div class=\"header\">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v1, "<img class=\"avatar\" src=\"cid:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v1, "<div class=\"text\"><p class=\"text-auto-size\">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</p></div>"

    .line 265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v1, "</div>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string v1, "<section>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-static {p2}, Lcom/google/android/wearable/app/GlassDataListener;->getTextHtml(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "text-auto-size"

    aput-object v3, v2, v4

    const-string v3, "auto-overflow"

    aput-object v3, v2, v5

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/android/wearable/app/DataMapToHtml;->appendDivWithText(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 271
    const-string v1, "</section>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const-string v1, "</article>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    return-void
.end method

.method addHtmlForBackground(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .param p1, "html"    # Ljava/lang/StringBuilder;
    .param p2, "backgroundAttachmentId"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 401
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    :goto_0
    return-void

    .line 405
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/wearable/app/DataMapToHtml;->appendOpenArticleWithClasses(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0, p1, p2}, Lcom/google/android/wearable/app/DataMapToHtml;->appendSingleCellMosaic(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 407
    const-string v0, "</article>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method addHtmlForCoverPage(Ljava/lang/StringBuilder;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "html"    # Ljava/lang/StringBuilder;
    .param p2, "pageData"    # Landroid/os/Bundle;
    .param p3, "backgroundId"    # Ljava/lang/String;
    .param p4, "bigPictureId"    # Ljava/lang/String;
    .param p5, "backgroundTooSmall"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 232
    if-eqz p3, :cond_1

    move v0, v3

    .line 233
    .local v0, "hasBackground":Z
    :goto_0
    if-eqz p4, :cond_2

    move v1, v3

    .line 235
    .local v1, "hasBigPicture":Z
    :goto_1
    invoke-virtual {p0, p2}, Lcom/google/android/wearable/app/DataMapToHtml;->isInboxStyle(Landroid/os/Bundle;)Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    :cond_0
    move v2, v3

    .line 236
    .local v2, "useCoverPage":Z
    :goto_2
    invoke-static {v2}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 238
    if-eqz v1, :cond_4

    .line 240
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/wearable/app/DataMapToHtml;->addHtmlForPhotoMessageCover(Ljava/lang/StringBuilder;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :goto_3
    return-void

    .end local v0    # "hasBackground":Z
    .end local v1    # "hasBigPicture":Z
    .end local v2    # "useCoverPage":Z
    :cond_1
    move v0, v4

    .line 232
    goto :goto_0

    .restart local v0    # "hasBackground":Z
    :cond_2
    move v1, v4

    .line 233
    goto :goto_1

    .restart local v1    # "hasBigPicture":Z
    :cond_3
    move v2, v4

    .line 235
    goto :goto_2

    .line 241
    .restart local v2    # "useCoverPage":Z
    :cond_4
    if-eqz p5, :cond_5

    .line 243
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/wearable/app/DataMapToHtml;->addHtmlForAuthorCoverPage(Ljava/lang/StringBuilder;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_3

    .line 246
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/wearable/app/DataMapToHtml;->addHtmlForMessageCoverPage(Ljava/lang/StringBuilder;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_3
.end method

.method addHtmlForList(Ljava/lang/StringBuilder;Landroid/os/Bundle;Z)V
    .locals 7
    .param p1, "html"    # Ljava/lang/StringBuilder;
    .param p2, "dataMapBundle"    # Landroid/os/Bundle;
    .param p3, "coverOverflow"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 432
    const-string v3, "inbox_lines"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v1, v3

    check-cast v1, [Ljava/lang/String;

    .line 433
    .local v1, "lines":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-gtz v3, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    if-eqz p3, :cond_2

    .line 438
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "auto-paginate"

    aput-object v4, v3, v5

    const-string v4, "cover-overflow"

    aput-object v4, v3, v6

    invoke-virtual {p0, p1, v3}, Lcom/google/android/wearable/app/DataMapToHtml;->appendOpenArticleWithClasses(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 444
    :goto_1
    const-string v3, "<style>li > p {overflow:hidden; text-overflow:ellipsis;}</style>"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    const-string v3, "<ul>"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v3, v1

    if-ge v0, v3, :cond_3

    .line 448
    const-string v3, "<li>"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</li>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 440
    .end local v0    # "i":I
    :cond_2
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "auto-paginate"

    aput-object v4, v3, v5

    invoke-virtual {p0, p1, v3}, Lcom/google/android/wearable/app/DataMapToHtml;->appendOpenArticleWithClasses(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    goto :goto_1

    .line 450
    .restart local v0    # "i":I
    :cond_3
    const-string v3, "</ul>"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-static {p2}, Lcom/google/android/wearable/app/GlassDataListener;->getTitleHtml(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 453
    .local v2, "title":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/google/android/wearable/app/DataMapToHtml;->appendFooter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v3, "</article>"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method addHtmlForMessageCoverPage(Ljava/lang/StringBuilder;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .param p1, "html"    # Ljava/lang/StringBuilder;
    .param p2, "pageData"    # Landroid/os/Bundle;
    .param p3, "backgroundId"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 279
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 280
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "cover-only"

    aput-object v2, v1, v4

    invoke-virtual {p0, p1, v1}, Lcom/google/android/wearable/app/DataMapToHtml;->appendOpenArticleWithClasses(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 282
    const-string v1, "<figure style=\"background-color: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/google/android/wearable/app/DataMapToHtml;->DEFAULT_FIGURE_BACKGROUND_COLOR:I

    .line 283
    invoke-static {v2}, Lcom/google/android/wearable/app/DataMapToHtml;->colorToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {p0, p1, p3}, Lcom/google/android/wearable/app/DataMapToHtml;->appendSingleCellMosaic(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 287
    invoke-static {p2}, Lcom/google/android/wearable/app/GlassDataListener;->getTitleHtml(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    const-string v1, "<div class=\"overlay-gradient-medium\"></div>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const-string v1, "margin-left: 20px; margin-right: 20px; text-align: center;"

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/wearable/app/DataMapToHtml;->appendFooter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_0
    const-string v1, "</figure>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string v1, "<section>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-static {p2}, Lcom/google/android/wearable/app/GlassDataListener;->getTextHtml(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "text-auto-size"

    aput-object v3, v2, v4

    const-string v3, "auto-overflow"

    aput-object v3, v2, v5

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/android/wearable/app/DataMapToHtml;->appendDivWithText(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 299
    const-string v1, "</section>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const-string v1, "</article>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    return-void
.end method

.method addHtmlForPhotoMessageCover(Ljava/lang/StringBuilder;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "html"    # Ljava/lang/StringBuilder;
    .param p2, "pageData"    # Landroid/os/Bundle;
    .param p3, "backgroundId"    # Ljava/lang/String;
    .param p4, "bigPictureId"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 311
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 312
    const-string v5, "<style>article.photo table {height: 100%;}.avatar {vertical-align: middle;}.avatar > img {width: 60px;height: 60px;border-radius: 30px;background-color: rgba(255, 255, 255 0.2);margin-right: 24px;}td.text {padding: 0px;vertical-align: middle;width: 100%;}td.text > div {top: 0px !important;}article.photo > section {top: 150px;}</style>"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-static {p2}, Lcom/google/android/wearable/app/GlassDataListener;->getTextHtml(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "text":Ljava/lang/String;
    invoke-static {p2}, Lcom/google/android/wearable/app/GlassDataListener;->getTitleHtml(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, "title":Ljava/lang/String;
    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "cover-only"

    aput-object v6, v5, v3

    const-string v6, "photo"

    aput-object v6, v5, v4

    invoke-virtual {p0, p1, v5}, Lcom/google/android/wearable/app/DataMapToHtml;->appendOpenArticleWithClasses(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0, p1, p4}, Lcom/google/android/wearable/app/DataMapToHtml;->appendSingleCellMosaic(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 327
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_0
    move v0, v4

    .line 328
    .local v0, "hasMoreContent":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 329
    const-string v5, "<div class=\"overlay-gradient-medium\"></div>"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const-string v5, "<section><table><tr>"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 336
    const-string v5, "<td class=\"avatar\">"

    .line 337
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<img src=\"cid:"

    .line 338
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" />"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</td>"

    .line 339
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 344
    const-string v5, "<td class=\"text\">"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "text-auto-size"

    aput-object v6, v5, v3

    const-string v3, "auto-overflow"

    aput-object v3, v5, v4

    invoke-virtual {p0, p1, v1, v5}, Lcom/google/android/wearable/app/DataMapToHtml;->appendDivWithText(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 346
    const-string v3, "</td>"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_2
    const-string v3, "</tr></tbody></table></section>"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 354
    const-string v3, ""

    invoke-virtual {p0, p1, v2, v3}, Lcom/google/android/wearable/app/DataMapToHtml;->appendFooter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_3
    const-string v3, "</article>"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    return-void

    .end local v0    # "hasMoreContent":Z
    :cond_4
    move v0, v3

    .line 327
    goto :goto_0
.end method

.method addHtmlForText(Ljava/lang/StringBuilder;Landroid/os/Bundle;Z)V
    .locals 5
    .param p1, "html"    # Ljava/lang/StringBuilder;
    .param p2, "pageData"    # Landroid/os/Bundle;
    .param p3, "coverOverflow"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 413
    invoke-static {p2}, Lcom/google/android/wearable/app/GlassDataListener;->getTextHtml(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    :goto_0
    return-void

    .line 420
    :cond_0
    if-eqz p3, :cond_1

    .line 421
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "auto-paginate"

    aput-object v2, v1, v3

    const-string v2, "cover-overflow"

    aput-object v2, v1, v4

    invoke-virtual {p0, p1, v1}, Lcom/google/android/wearable/app/DataMapToHtml;->appendOpenArticleWithClasses(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 425
    :goto_1
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "text-auto-size"

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/wearable/app/DataMapToHtml;->appendDivWithText(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 426
    const-string v1, "</article>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 423
    :cond_1
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "auto-paginate"

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v1}, Lcom/google/android/wearable/app/DataMapToHtml;->appendOpenArticleWithClasses(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    goto :goto_1
.end method

.method varargs appendDivWithText(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "html"    # Ljava/lang/StringBuilder;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "classes"    # [Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 365
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    :goto_0
    return-void

    .line 369
    :cond_0
    const-string v1, "<div class=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 371
    aget-object v1, p3, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 373
    :cond_1
    const-string v1, "\">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const-string v1, "</div>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method appendFooter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "html"    # Ljava/lang/StringBuilder;
    .param p2, "footerText"    # Ljava/lang/String;
    .param p3, "style"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 464
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    :goto_0
    return-void

    .line 468
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    const-string v0, "<footer>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</footer>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 471
    :cond_1
    const-string v0, "<footer style=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</footer>"

    .line 472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method varargs appendOpenArticleWithClasses(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .locals 3
    .param p1, "html"    # Ljava/lang/StringBuilder;
    .param p2, "classes"    # [Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 478
    const-string v1, "<article class=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 480
    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    :cond_0
    const-string v1, "\">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    return-void
.end method

.method appendSingleCellMosaic(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "html"    # Ljava/lang/StringBuilder;
    .param p2, "attachmentId"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 487
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    :goto_0
    return-void

    .line 491
    :cond_0
    const-string v0, "<ul class=\"mosaic\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    const-string v0, "<li style=\"background-image: url(cid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")\"></li>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    const-string v0, "</ul>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method extractBackgroundColor(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 6
    .param p1, "background"    # Landroid/graphics/Bitmap;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 502
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 504
    new-instance v1, Lcom/google/android/wearable/app/VibrantColorExtractor;

    sget v3, Lcom/google/android/wearable/app/DataMapToHtml;->DEFAULT_FIGURE_BACKGROUND_COLOR:I

    invoke-direct {v1, p1, v3}, Lcom/google/android/wearable/app/VibrantColorExtractor;-><init>(Landroid/graphics/Bitmap;I)V

    .line 506
    .local v1, "extractor":Lcom/google/android/wearable/app/VibrantColorExtractor;
    invoke-virtual {v1}, Lcom/google/android/wearable/app/VibrantColorExtractor;->getVibrantColor()I

    move-result v0

    .line 509
    .local v0, "backgroundColor":I
    sget v3, Lcom/google/android/wearable/app/DataMapToHtml;->DEFAULT_FIGURE_BACKGROUND_COLOR:I

    if-ne v0, v3, :cond_0

    .line 510
    sget v3, Lcom/google/android/wearable/app/DataMapToHtml;->DEFAULT_FIGURE_BACKGROUND_COLOR:I

    invoke-static {v3}, Lcom/google/android/wearable/app/DataMapToHtml;->colorToString(I)Ljava/lang/String;

    move-result-object v3

    .line 520
    :goto_0
    return-object v3

    .line 514
    :cond_0
    const/4 v3, 0x3

    new-array v2, v3, [F

    .line 515
    .local v2, "hsv":[F
    invoke-static {v0, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 516
    const/4 v3, 0x2

    aget v4, v2, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    aput v4, v2, v3

    .line 519
    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 520
    invoke-static {v0}, Lcom/google/android/wearable/app/DataMapToHtml;->colorToString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getHtml(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 17
    .param p1, "dataMapBundle"    # Landroid/os/Bundle;
    .param p2, "backgroundId"    # Ljava/lang/String;
    .param p3, "bigPictureId"    # Ljava/lang/String;
    .param p4, "backgroundTooSmall"    # Z

    .prologue
    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v3, "html":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/wearable/app/DataMapToHtml;->isInboxStyle(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 156
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/wearable/app/DataMapToHtml;->addHtmlForList(Ljava/lang/StringBuilder;Landroid/os/Bundle;Z)V

    .line 207
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 209
    const-string v2, "<style>.text-small {line-height: 40px;}</style>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 164
    :cond_2
    if-eqz p2, :cond_5

    const/4 v11, 0x1

    .line 165
    .local v11, "hasBackground":Z
    :goto_0
    if-eqz p3, :cond_6

    const/4 v12, 0x1

    .line 166
    .local v12, "hasBigPicture":Z
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/wearable/app/DataMapToHtml;->isInboxStyle(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_7

    if-nez v11, :cond_3

    if-eqz v12, :cond_7

    :cond_3
    const/16 v16, 0x1

    .line 167
    .local v16, "useCoverPage":Z
    :goto_2
    if-eqz v16, :cond_8

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    .line 168
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/wearable/app/DataMapToHtml;->addHtmlForCoverPage(Ljava/lang/StringBuilder;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 171
    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/google/android/wearable/app/DataMapToHtml;->addHtmlForPageData(Ljava/lang/StringBuilder;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 179
    :goto_3
    const-string v2, "pages"

    .line 180
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 181
    .local v15, "pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v15, :cond_0

    .line 182
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_0

    .line 183
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Bundle;

    .line 185
    .local v14, "page":Landroid/os/Bundle;
    const/4 v10, 0x0

    .line 186
    .local v10, "attachmentId":Ljava/lang/String;
    invoke-static {v14}, Lcom/google/android/wearable/app/GlassDataListener;->hasBackground(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 188
    const-string v2, "background_for_page_%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 189
    .local v7, "assetName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/wearable/app/DataMapToHtml;->wearAssetHelper:Lcom/google/android/wearable/app/WearAssetHelper;

    const-string v2, "background"

    .line 190
    invoke-virtual {v14, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/wearable/Asset;

    .line 189
    invoke-virtual {v4, v2}, Lcom/google/android/wearable/app/WearAssetHelper;->getBitmap(Lcom/google/android/gms/wearable/Asset;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 191
    .local v8, "pageBackground":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_4

    .line 193
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/wearable/app/DataMapToHtml;->wearAssetHelper:Lcom/google/android/wearable/app/WearAssetHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/wearable/app/DataMapToHtml;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/wearable/app/DataMapToHtml;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 194
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSourceItemId()Ljava/lang/String;

    move-result-object v6

    const-string v9, "image/png"

    .line 193
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/wearable/app/WearAssetHelper;->addBitmap(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 197
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 202
    .end local v7    # "assetName":Ljava/lang/String;
    .end local v8    # "pageBackground":Landroid/graphics/Bitmap;
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14, v2, v10}, Lcom/google/android/wearable/app/DataMapToHtml;->addHtmlForPageData(Ljava/lang/StringBuilder;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 182
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 164
    .end local v10    # "attachmentId":Ljava/lang/String;
    .end local v11    # "hasBackground":Z
    .end local v12    # "hasBigPicture":Z
    .end local v13    # "i":I
    .end local v14    # "page":Landroid/os/Bundle;
    .end local v15    # "pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v16    # "useCoverPage":Z
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 165
    .restart local v11    # "hasBackground":Z
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 166
    .restart local v12    # "hasBigPicture":Z
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 174
    .restart local v16    # "useCoverPage":Z
    :cond_8
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/google/android/wearable/app/DataMapToHtml;->addHtmlForPageData(Ljava/lang/StringBuilder;Landroid/os/Bundle;ZLjava/lang/String;)V

    goto :goto_3

    .line 197
    .restart local v7    # "assetName":Ljava/lang/String;
    .restart local v8    # "pageBackground":Landroid/graphics/Bitmap;
    .restart local v10    # "attachmentId":Ljava/lang/String;
    .restart local v13    # "i":I
    .restart local v14    # "page":Landroid/os/Bundle;
    .restart local v15    # "pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    throw v2
.end method

.method isInboxStyle(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "dataMapBundle"    # Landroid/os/Bundle;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 224
    const-string v0, "inbox_lines"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isMultipage(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "dataMapBundle"    # Landroid/os/Bundle;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 218
    const-string v0, "pages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public requiresHtml(Landroid/os/Bundle;Z)Z
    .locals 1
    .param p1, "dataMapBundle"    # Landroid/os/Bundle;
    .param p2, "hasImages"    # Z

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/google/android/wearable/app/DataMapToHtml;->isMultipage(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/wearable/app/DataMapToHtml;->isInboxStyle(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
