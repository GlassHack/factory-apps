.class Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$ShareTargetComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p1, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$ShareTargetComparator;->context:Landroid/content/Context;

    .line 244
    return-void
.end method


# virtual methods
.method public compare(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)I
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$ShareTargetComparator;->context:Landroid/content/Context;

    .line 249
    invoke-static {v0, p1}, Lcom/google/glass/voice/QualificationUtils;->getQualifiedNameImmediately(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-static {v0}, Lcom/google/common/base/av;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$ShareTargetComparator;->context:Landroid/content/Context;

    .line 250
    invoke-static {v1, p2}, Lcom/google/glass/voice/QualificationUtils;->getQualifiedNameImmediately(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/av;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 251
    if-nez v0, :cond_0

    .line 252
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/av;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/av;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 256
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 240
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    check-cast p2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$ShareTargetComparator;->compare(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)I

    move-result v0

    return v0
.end method
