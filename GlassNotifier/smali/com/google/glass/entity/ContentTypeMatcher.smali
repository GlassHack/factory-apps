.class public Lcom/google/glass/entity/ContentTypeMatcher;
.super Ljava/lang/Object;
.source "ContentTypeMatcher.java"


# static fields
.field public static final NULL_MATCHER:Lcom/google/glass/entity/ContentTypeMatcher;


# instance fields
.field private final contentTypes:[Ljava/lang/String;

.field private final hashCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/google/glass/entity/ContentTypeMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/glass/entity/ContentTypeMatcher;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/entity/ContentTypeMatcher;->NULL_MATCHER:Lcom/google/glass/entity/ContentTypeMatcher;

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "contentTypes"    # [Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/glass/entity/ContentTypeMatcher;->contentTypes:[Ljava/lang/String;

    .line 54
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/glass/entity/ContentTypeMatcher;->hashCode:I

    .line 55
    return-void
.end method

.method public static from(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Lcom/google/glass/entity/ContentTypeMatcher;
    .locals 4
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .prologue
    .line 19
    if-nez p0, :cond_0

    .line 20
    sget-object v2, Lcom/google/glass/entity/ContentTypeMatcher;->NULL_MATCHER:Lcom/google/glass/entity/ContentTypeMatcher;

    .line 37
    :goto_0
    return-object v2

    .line 22
    :cond_0
    new-instance v1, Lcom/google/android/util/ArraySet;

    invoke-direct {v1}, Lcom/google/android/util/ArraySet;-><init>()V

    .line 23
    .local v1, "types":Lcom/google/android/util/ArraySet;, "Lcom/google/android/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 24
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Lcom/google/android/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getHtml()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 27
    const-string v2, "text/html"

    invoke-virtual {v1, v2}, Lcom/google/android/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 30
    const-string v2, "application/url"

    invoke-virtual {v1, v2}, Lcom/google/android/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    invoke-static {v2}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 33
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 34
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 37
    .end local v0    # "i":I
    :cond_4
    new-instance v3, Lcom/google/glass/entity/ContentTypeMatcher;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v3, v2}, Lcom/google/glass/entity/ContentTypeMatcher;-><init>([Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_0
.end method

.method public static from(Ljava/lang/String;)Lcom/google/glass/entity/ContentTypeMatcher;
    .locals 3
    .param p0, "contentType"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v0, Lcom/google/glass/entity/ContentTypeMatcher;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lcom/google/glass/entity/ContentTypeMatcher;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public static from([Ljava/lang/String;)Lcom/google/glass/entity/ContentTypeMatcher;
    .locals 1
    .param p0, "contentTypes"    # [Ljava/lang/String;

    .prologue
    .line 42
    new-instance v0, Lcom/google/glass/entity/ContentTypeMatcher;

    invoke-direct {v0, p0}, Lcom/google/glass/entity/ContentTypeMatcher;-><init>([Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 68
    if-ne p0, p1, :cond_1

    .line 69
    const/4 v1, 0x1

    .line 78
    :cond_0
    :goto_0
    return v1

    .line 71
    :cond_1
    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 77
    check-cast v0, Lcom/google/glass/entity/ContentTypeMatcher;

    .line 78
    .local v0, "other":Lcom/google/glass/entity/ContentTypeMatcher;
    iget-object v1, p0, Lcom/google/glass/entity/ContentTypeMatcher;->contentTypes:[Ljava/lang/String;

    iget-object v2, v0, Lcom/google/glass/entity/ContentTypeMatcher;->contentTypes:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getContentTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/entity/ContentTypeMatcher;->contentTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/google/glass/entity/ContentTypeMatcher;->hashCode:I

    return v0
.end method
