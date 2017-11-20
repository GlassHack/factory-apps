.class public Lcom/google/glass/gesture/eye/ui/CalibrationTipsAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "CalibrationTipsAdapter.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final tips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/gesture/eye/ui/CalibrationTipsAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "tips":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/glass/gesture/eye/ui/CalibrationTipsAdapter;->context:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/google/glass/gesture/eye/ui/CalibrationTipsAdapter;->tips:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/CalibrationTipsAdapter;->tips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/CalibrationTipsAdapter;->tips:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/CalibrationTipsAdapter;->tips:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 42
    sget-object v3, Lcom/google/glass/gesture/eye/ui/CalibrationTipsAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "get view %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    if-nez p2, :cond_0

    .line 45
    new-instance p2, Lcom/google/glass/gesture/eye/ui/CalibrationTipView;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v3, p0, Lcom/google/glass/gesture/eye/ui/CalibrationTipsAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v3}, Lcom/google/glass/gesture/eye/ui/CalibrationTipView;-><init>(Landroid/content/Context;)V

    .line 46
    .restart local p2    # "convertView":Landroid/view/View;
    sget-object v3, Lcom/google/glass/gesture/eye/ui/CalibrationTipsAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Instantiating a new view for position %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :goto_0
    sget v3, Lcom/google/glass/gesture/R$id;->wink_tip_title:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 52
    .local v2, "title":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/google/glass/gesture/eye/ui/CalibrationTipsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 53
    .local v1, "res":Landroid/content/res/Resources;
    sget v3, Lcom/google/glass/gesture/R$string;->wink_tip_card_title_prefix:I

    new-array v4, v8, [Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    sget v3, Lcom/google/glass/gesture/R$id;->wink_tip_content:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    .local v0, "content":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/google/glass/gesture/eye/ui/CalibrationTipsAdapter;->tips:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-object p2

    .line 48
    .end local v0    # "content":Landroid/widget/TextView;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "title":Landroid/widget/TextView;
    :cond_0
    sget-object v3, Lcom/google/glass/gesture/eye/ui/CalibrationTipsAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Reusing a view for position %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
