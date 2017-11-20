.class Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;
.super Ljava/lang/Object;
.source "TimelineItemLinkify.java"


# static fields
.field private static final CONVERT_BITS:I = 0xffffff

.field private static final INLINE_ELEMENTS:Ljava/util/regex/Pattern;

.field static final LINK_STYLE:Ljava/lang/String; = "font-family: \'Roboto\'; font-weight: 400; text-decoration: none; color: #%06x;"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final PARAGRAPH_PATTERN:Ljava/util/regex/Pattern;

.field static final TWITTER_SOURCE:Ljava/lang/String; = "api:336684388886"

.field static final URL_SCHEMES:[Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 46
    const-string v0, "(<p.*?>)(.+?)(</p>)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->PARAGRAPH_PATTERN:Ljava/util/regex/Pattern;

    .line 49
    const-string v0, "<.+?>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->INLINE_ELEMENTS:Ljava/util/regex/Pattern;

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "https://"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "rtsp://"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->URL_SCHEMES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;I)[Lcom/google/glass/widget/MenuItemDescriptor;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->createMenuItemsFromUrls(Ljava/util/List;I)[Lcom/google/glass/widget/MenuItemDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/View;[Lcom/google/glass/widget/MenuItemDescriptor;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # [Lcom/google/glass/widget/MenuItemDescriptor;

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->applyMenuItems(Landroid/view/View;[Lcom/google/glass/widget/MenuItemDescriptor;)V

    return-void
.end method

.method static addLinks(Landroid/content/Context;Ljava/util/List;Ljava/lang/CharSequence;)Landroid/text/Spanned;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "originalText"    # Ljava/lang/CharSequence;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")",
            "Landroid/text/Spanned;"
        }
    .end annotation

    .prologue
    .line 363
    .local p1, "links":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;>;"
    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    sget-object v2, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->URL_SCHEMES:[Ljava/lang/String;

    sget-object v3, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    invoke-static {p1, p2, v1, v2, v3}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->gatherLinks(Ljava/util/List;Ljava/lang/CharSequence;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;)Landroid/text/Spannable;

    move-result-object v0

    .line 365
    .local v0, "s":Landroid/text/Spannable;
    invoke-static {p0, v0, p1}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->addUrlSpan(Landroid/content/Context;Landroid/text/Spannable;Ljava/util/List;)V

    .line 366
    return-object v0
.end method

.method static addLinks(Landroid/content/Context;Ljava/util/List;Ljava/lang/CharSequence;ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Landroid/text/Spanned;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "originalText"    # Ljava/lang/CharSequence;
    .param p3, "textStartIndex"    # I
    .param p4, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ")",
            "Landroid/text/Spanned;"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, "links":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;>;"
    invoke-static {p2}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v2

    .line 344
    .local v2, "s":Landroid/text/SpannableString;
    iget-object v3, p4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-eqz v3, :cond_0

    invoke-virtual {p4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsBundleCover()Z

    move-result v3

    if-nez v3, :cond_0

    .line 345
    iget-object v4, p4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    .line 346
    .local v0, "linkSpec":Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    new-instance v1, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;-><init>()V

    .line 349
    .local v1, "newLinkSpec":Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->getStart()I

    move-result v6

    add-int/2addr v6, p3

    invoke-virtual {v1, v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->setStart(I)Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 350
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->getEnd()I

    move-result v6

    add-int/2addr v6, p3

    invoke-virtual {v1, v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->setEnd(I)Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 351
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->setUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 352
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 355
    .end local v0    # "linkSpec":Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .end local v1    # "newLinkSpec":Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    :cond_0
    invoke-static {p0, v2, p1}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->addUrlSpan(Landroid/content/Context;Landroid/text/Spannable;Ljava/util/List;)V

    .line 356
    return-object v2
.end method

.method private static addUrlSpan(Landroid/content/Context;Landroid/text/Spannable;Ljava/util/List;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "s"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/text/Spannable;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p2, "links":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 325
    .local v1, "link":Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    new-instance v0, Lcom/google/glass/timeline/ui/binder/GlassUrlSpan;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/timeline/ui/binder/GlassUrlSpan;-><init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;)V

    .line 326
    .local v0, "glassUrlSpan":Lcom/google/glass/timeline/ui/binder/GlassUrlSpan;
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->getEnd()I

    move-result v3

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 327
    sget-object v3, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Wrong linkSpec<%d,%d,%s>, text:\"%s\""

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->getStart()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->getEnd()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 328
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->getUrl()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p1, v5, v6

    .line 327
    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->getStart()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->getEnd()I

    move-result v4

    const/16 v5, 0x21

    invoke-interface {p1, v0, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 334
    .end local v0    # "glassUrlSpan":Lcom/google/glass/timeline/ui/binder/GlassUrlSpan;
    .end local v1    # "link":Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    :cond_1
    return-void
.end method

.method private static applyMenuItems(Landroid/view/View;[Lcom/google/glass/widget/MenuItemDescriptor;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "menuItems"    # [Lcom/google/glass/widget/MenuItemDescriptor;

    .prologue
    .line 236
    if-eqz p0, :cond_0

    .line 237
    sget v0, Lcom/google/glass/common/R$id;->tag_menu_item:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 239
    :cond_0
    return-void
.end method

.method private static createMenuItemFromUrl(Ljava/lang/String;)Lcom/google/glass/widget/MenuItemDescriptor;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 263
    new-instance v0, Lcom/google/glass/widget/MenuItemDescriptor;

    invoke-direct {v0}, Lcom/google/glass/widget/MenuItemDescriptor;-><init>()V

    sget v1, Lcom/google/glass/common/R$id;->menu_browse_website:I

    .line 264
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MenuItemDescriptor;->setId(I)Lcom/google/glass/widget/MenuItemDescriptor;

    move-result-object v0

    sget-object v1, Lcom/google/android/glass/app/ContextualMenus$Command;->OPEN_THIS_WEBSITE:Lcom/google/android/glass/app/ContextualMenus$Command;

    .line 265
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MenuItemDescriptor;->setCommand(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/glass/widget/MenuItemDescriptor;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$drawable;->ic_world_50:I

    .line 266
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MenuItemDescriptor;->setIconRid(I)Lcom/google/glass/widget/MenuItemDescriptor;

    move-result-object v0

    .line 267
    invoke-virtual {v0, p0}, Lcom/google/glass/widget/MenuItemDescriptor;->setDescription(Ljava/lang/String;)Lcom/google/glass/widget/MenuItemDescriptor;

    move-result-object v0

    .line 268
    invoke-virtual {v0, p0}, Lcom/google/glass/widget/MenuItemDescriptor;->setExtra(Ljava/lang/String;)Lcom/google/glass/widget/MenuItemDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private static createMenuItemsFromUrls(Ljava/util/List;I)[Lcom/google/glass/widget/MenuItemDescriptor;
    .locals 7
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;",
            ">;I)[",
            "Lcom/google/glass/widget/MenuItemDescriptor;"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "linkSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;>;"
    new-instance v0, Lcom/google/android/util/ArraySet;

    invoke-direct {v0}, Lcom/google/android/util/ArraySet;-><init>()V

    .line 247
    .local v0, "existedUrls":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 248
    .local v2, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/widget/MenuItemDescriptor;>;"
    const/4 v1, 0x0

    .line 249
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 250
    .local v3, "linkSpec":Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    add-int/lit8 v1, v1, 0x1

    if-le v1, p1, :cond_2

    .line 259
    .end local v3    # "linkSpec":Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    :cond_1
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/google/glass/widget/MenuItemDescriptor;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/glass/widget/MenuItemDescriptor;

    return-object v5

    .line 253
    .restart local v3    # "linkSpec":Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    :cond_2
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 254
    .local v4, "url":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 255
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-static {v4}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->createMenuItemFromUrl(Ljava/lang/String;)Lcom/google/glass/widget/MenuItemDescriptor;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static findUrlsInHtml(Ljava/util/List;Ljava/lang/String;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;)Ljava/lang/String;
    .locals 8
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "links":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;>;"
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 139
    .local v4, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 140
    .local v3, "m":Ljava/util/regex/Matcher;
    const/4 v1, 0x0

    .line 142
    .local v1, "lastEnd":I
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 143
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    .line 144
    .local v5, "start":I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 146
    .local v0, "end":I
    if-eqz p4, :cond_1

    invoke-interface {p4, p1, v5, v0}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 147
    :cond_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {p1, v1, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 148
    move v1, v0

    .line 149
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, "url":Ljava/lang/String;
    invoke-static {v6}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->getLinkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    new-instance v2, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;-><init>()V

    .line 152
    .local v2, "linkSpec":Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    invoke-virtual {v2, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->setStart(I)Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 153
    invoke-virtual {v2, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->setEnd(I)Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 154
    invoke-static {v6, p3}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->setUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 155
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    .end local v0    # "end":I
    .end local v2    # "linkSpec":Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .end local v5    # "start":I
    .end local v6    # "url":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method static findUrlsInHtmlIgnoreInlineElements(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "links":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 168
    .local v2, "sb":Ljava/lang/StringBuffer;
    sget-object v3, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->INLINE_ELEMENTS:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 169
    .local v1, "m":Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    .line 170
    .local v0, "lastEnd":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    sget-object v5, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->URL_SCHEMES:[Ljava/lang/String;

    sget-object v6, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    invoke-static {p0, v3, v4, v5, v6}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->findUrlsInHtml(Ljava/util/List;Ljava/lang/String;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    sget-object v5, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->URL_SCHEMES:[Ljava/lang/String;

    sget-object v6, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    invoke-static {p0, v3, v4, v5, v6}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->findUrlsInHtml(Ljava/util/List;Ljava/lang/String;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static final gatherLinks(Ljava/util/List;Ljava/lang/CharSequence;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;)Landroid/text/Spannable;
    .locals 13
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            ")",
            "Landroid/text/Spannable;"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, "links":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;>;"
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 299
    .local v7, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 300
    .local v5, "m":Ljava/util/regex/Matcher;
    const/4 v9, 0x0

    .line 302
    .local v9, "totalShrunkLength":I
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 303
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    .line 304
    .local v8, "start":I
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 305
    .local v1, "end":I
    invoke-interface {p1, v8, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->shrinkLink(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 306
    .local v6, "shrunkLink":Ljava/lang/String;
    sub-int v4, v8, v9

    .line 307
    .local v4, "linkStart":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    add-int v2, v4, v11

    .line 308
    .local v2, "linkEnd":I
    sub-int v11, v1, v9

    invoke-virtual {v7, v4, v11, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 309
    sub-int v11, v1, v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v11, v12

    add-int/2addr v9, v11

    .line 311
    if-eqz p4, :cond_1

    move-object/from16 v0, p4

    invoke-interface {v0, p1, v8, v1}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 312
    :cond_1
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-static {v11, v0}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 313
    .local v10, "url":Ljava/lang/String;
    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;-><init>()V

    .line 314
    .local v3, "linkSpec":Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->setStart(I)Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 315
    invoke-virtual {v3, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->setEnd(I)Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 316
    invoke-virtual {v3, v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;->setUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    .line 317
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 320
    .end local v1    # "end":I
    .end local v2    # "linkEnd":I
    .end local v3    # "linkSpec":Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;
    .end local v4    # "linkStart":I
    .end local v6    # "shrunkLink":Ljava/lang/String;
    .end local v8    # "start":I
    .end local v10    # "url":Ljava/lang/String;
    :cond_2
    return-object v7
.end method

.method static getLinkString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 223
    const v0, 0xffffff

    .line 224
    .local v0, "linkColor":I
    const-string v2, "font-family: \'Roboto\'; font-weight: 400; text-decoration: none; color: #%06x;"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "linkStyle":Ljava/lang/String;
    const-string v2, "<a style=\"%s\" href=\"%s\">%s</a>"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    aput-object p0, v3, v6

    const/4 v4, 0x2

    invoke-static {p0}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->shrinkLink(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static final makeUrl(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "prefixes"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 272
    const/4 v7, 0x0

    .line 274
    .local v7, "hasPrefix":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, p1

    if-ge v8, v0, :cond_0

    .line 275
    const/4 v1, 0x1

    aget-object v3, p1, v8

    aget-object v0, p1, v8

    .line 276
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v4, v2

    .line 275
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    const/4 v7, 0x1

    .line 280
    aget-object v4, p1, v8

    aget-object v0, p1, v8

    .line 281
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p0

    move v3, v2

    move v5, v2

    .line 280
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    aget-object v0, p1, v8

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aget-object v1, p1, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 289
    :cond_0
    :goto_1
    if-nez v7, :cond_1

    .line 290
    aget-object v0, p1, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 293
    :cond_1
    :goto_2
    return-object p0

    .line 282
    :cond_2
    new-instance p0, Ljava/lang/String;

    .end local p0    # "url":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 274
    .restart local p0    # "url":Ljava/lang/String;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 290
    :cond_4
    new-instance p0, Ljava/lang/String;

    .end local p0    # "url":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static shrinkLink(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 11
    .param p0, "link"    # Ljava/lang/CharSequence;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 374
    const-string/jumbo v6, "www."

    .line 375
    .local v6, "www":Ljava/lang/String;
    const-string/jumbo v0, "\u2026"

    .line 376
    .local v0, "ellipsis":Ljava/lang/String;
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "lowerCaseLink":Ljava/lang/String;
    const/4 v4, 0x0

    .line 380
    .local v4, "start":I
    sget-object v8, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->URL_SCHEMES:[Ljava/lang/String;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v5, v8, v7

    .line 381
    .local v5, "url":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 382
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 388
    .end local v5    # "url":Ljava/lang/String;
    :cond_0
    const-string/jumbo v7, "www."

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    const-string/jumbo v7, "www."

    const-string/jumbo v8, "www."

    .line 389
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 390
    const-string/jumbo v7, "www."

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v4, v7

    .line 394
    :cond_1
    const/16 v7, 0x2f

    const/16 v8, 0x2e

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 395
    .local v1, "end":I
    const/4 v7, -0x1

    if-ne v1, v7, :cond_2

    .line 396
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 400
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {p0, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 401
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_3

    .line 402
    const-string/jumbo v7, "\u2026"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 380
    .end local v1    # "end":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "url":Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method


# virtual methods
.method clearLinkifyForBoundView(Landroid/view/View;)V
    .locals 1
    .param p1, "boundView"    # Landroid/view/View;

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->applyMenuItems(Landroid/view/View;[Lcom/google/glass/widget/MenuItemDescriptor;)V

    .line 233
    return-void
.end method

.method configureLinkifyForHtmlView(Landroid/view/View;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 8
    .param p1, "boundView"    # Landroid/view/View;
    .param p2, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 185
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 187
    .local v2, "links":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;>;"
    iget-object v6, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-eqz v6, :cond_1

    iget-object v6, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    array-length v6, v6

    if-lez v6, :cond_1

    .line 188
    iget-object v6, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->htmlLinkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 218
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v2, v6}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->createMenuItemsFromUrls(Ljava/util/List;I)[Lcom/google/glass/widget/MenuItemDescriptor;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->applyMenuItems(Landroid/view/View;[Lcom/google/glass/widget/MenuItemDescriptor;)V

    .line 219
    :cond_0
    return-void

    .line 192
    :cond_1
    const-string v6, "api:336684388886"

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 201
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getHtml()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "html":Ljava/lang/String;
    sget-object v6, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->PARAGRAPH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 203
    .local v3, "matcher":Ljava/util/regex/Matcher;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 204
    .local v5, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 207
    .local v1, "lastEnd":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 208
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 212
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->findUrlsInHtmlIgnoreInlineElements(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 214
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 215
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, "modifiedHtml":Ljava/lang/String;
    invoke-virtual {p2, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setHtml(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    goto :goto_0
.end method

.method configureLinkifyForTextView(Lcom/google/glass/widget/DynamicSizeTextView;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Ljava/lang/CharSequence;ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/view/View;Landroid/content/Context;)V
    .locals 8
    .param p1, "textView"    # Lcom/google/glass/widget/DynamicSizeTextView;
    .param p2, "textClipListener"    # Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;
    .param p3, "fullText"    # Ljava/lang/CharSequence;
    .param p4, "textStartIndex"    # I
    .param p5, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p6, "boundView"    # Landroid/view/View;
    .param p7, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 93
    .local v3, "links":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;>;"
    if-eqz p5, :cond_0

    iget-object v0, p5, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    if-eqz v0, :cond_0

    iget-object v0, p5, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->linkSpec:[Lcom/google/googlex/glass/common/proto/TimelineNano$LinkSpec;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v6, 0x1

    .line 96
    .local v6, "hasLink":Z
    :goto_0
    if-eqz v6, :cond_1

    .line 97
    invoke-static {p7, v3, p3, p4, p5}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->addLinks(Landroid/content/Context;Ljava/util/List;Ljava/lang/CharSequence;ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Landroid/text/Spanned;

    move-result-object v2

    .line 104
    .local v2, "spannedText":Landroid/text/Spanned;
    :goto_1
    new-instance v0, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify$1;

    move-object v1, p0

    move-object v4, p6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify$1;-><init>(Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;Landroid/text/Spanned;Ljava/util/List;Landroid/view/View;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)V

    invoke-virtual {p1, v0}, Lcom/google/glass/widget/DynamicSizeTextView;->setTextClipListener(Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)V

    .line 122
    invoke-virtual {p1, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v3, v0}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->createMenuItemsFromUrls(Ljava/util/List;I)[Lcom/google/glass/widget/MenuItemDescriptor;

    move-result-object v7

    .line 128
    .local v7, "menuItems":[Lcom/google/glass/widget/MenuItemDescriptor;
    invoke-static {p6, v7}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->applyMenuItems(Landroid/view/View;[Lcom/google/glass/widget/MenuItemDescriptor;)V

    .line 129
    return-void

    .line 93
    .end local v2    # "spannedText":Landroid/text/Spanned;
    .end local v6    # "hasLink":Z
    .end local v7    # "menuItems":[Lcom/google/glass/widget/MenuItemDescriptor;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 99
    .restart local v6    # "hasLink":Z
    :cond_1
    invoke-static {p7, v3, p3}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->addLinks(Landroid/content/Context;Ljava/util/List;Ljava/lang/CharSequence;)Landroid/text/Spanned;

    move-result-object v2

    .restart local v2    # "spannedText":Landroid/text/Spanned;
    goto :goto_1
.end method
