.class Lcom/google/glass/widget/GlassTipsManager$IncreaseTipsCountTask;
.super Ljava/lang/Object;
.source "GlassTipsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/GlassTipsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncreaseTipsCountTask"
.end annotation


# instance fields
.field private final count:I

.field final synthetic this$0:Lcom/google/glass/widget/GlassTipsManager;

.field private final tipsType:Lcom/google/glass/widget/GlassTipsManager$TipsType;


# direct methods
.method private constructor <init>(Lcom/google/glass/widget/GlassTipsManager;Lcom/google/glass/widget/GlassTipsManager$TipsType;I)V
    .locals 0
    .param p2, "tipsType"    # Lcom/google/glass/widget/GlassTipsManager$TipsType;
    .param p3, "count"    # I

    .prologue
    .line 266
    iput-object p1, p0, Lcom/google/glass/widget/GlassTipsManager$IncreaseTipsCountTask;->this$0:Lcom/google/glass/widget/GlassTipsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p2, p0, Lcom/google/glass/widget/GlassTipsManager$IncreaseTipsCountTask;->tipsType:Lcom/google/glass/widget/GlassTipsManager$TipsType;

    .line 268
    iput p3, p0, Lcom/google/glass/widget/GlassTipsManager$IncreaseTipsCountTask;->count:I

    .line 269
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/widget/GlassTipsManager;Lcom/google/glass/widget/GlassTipsManager$TipsType;ILcom/google/glass/widget/GlassTipsManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/widget/GlassTipsManager;
    .param p2, "x1"    # Lcom/google/glass/widget/GlassTipsManager$TipsType;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/google/glass/widget/GlassTipsManager$1;

    .prologue
    .line 262
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/GlassTipsManager$IncreaseTipsCountTask;-><init>(Lcom/google/glass/widget/GlassTipsManager;Lcom/google/glass/widget/GlassTipsManager$TipsType;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager$IncreaseTipsCountTask;->this$0:Lcom/google/glass/widget/GlassTipsManager;

    invoke-static {v0}, Lcom/google/glass/widget/GlassTipsManager;->access$300(Lcom/google/glass/widget/GlassTipsManager;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Tips count for %s has been increased to %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/widget/GlassTipsManager$IncreaseTipsCountTask;->tipsType:Lcom/google/glass/widget/GlassTipsManager$TipsType;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/google/glass/widget/GlassTipsManager$IncreaseTipsCountTask;->count:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager$IncreaseTipsCountTask;->this$0:Lcom/google/glass/widget/GlassTipsManager;

    invoke-static {v0}, Lcom/google/glass/widget/GlassTipsManager;->access$700(Lcom/google/glass/widget/GlassTipsManager;)Lcom/google/glass/util/SettingsContract;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/GlassTipsManager$IncreaseTipsCountTask;->this$0:Lcom/google/glass/widget/GlassTipsManager;

    invoke-static {v1}, Lcom/google/glass/widget/GlassTipsManager;->access$600(Lcom/google/glass/widget/GlassTipsManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/widget/GlassTipsManager$IncreaseTipsCountTask;->tipsType:Lcom/google/glass/widget/GlassTipsManager$TipsType;

    iget-object v2, v2, Lcom/google/glass/widget/GlassTipsManager$TipsType;->settingsName:Ljava/lang/String;

    iget v3, p0, Lcom/google/glass/widget/GlassTipsManager$IncreaseTipsCountTask;->count:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/SettingsContract;->updateOrInsert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 275
    return-void
.end method
