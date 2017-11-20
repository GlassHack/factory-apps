.class final Lcom/google/glass/share/ShareLocationActivity$ErrorMessageDisplayer;
.super Ljava/lang/Object;
.source "ShareLocationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/share/ShareLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ErrorMessageDisplayer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/share/ShareLocationActivity;


# direct methods
.method private constructor <init>(Lcom/google/glass/share/ShareLocationActivity;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/google/glass/share/ShareLocationActivity$ErrorMessageDisplayer;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/share/ShareLocationActivity;Lcom/google/glass/share/ShareLocationActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/share/ShareLocationActivity;
    .param p2, "x1"    # Lcom/google/glass/share/ShareLocationActivity$1;

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/google/glass/share/ShareLocationActivity$ErrorMessageDisplayer;-><init>(Lcom/google/glass/share/ShareLocationActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity$ErrorMessageDisplayer;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    invoke-static {v0}, Lcom/google/glass/share/ShareLocationActivity;->access$1300(Lcom/google/glass/share/ShareLocationActivity;)Lcom/google/glass/widget/SliderView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/google/glass/share/ShareLocationActivity$ErrorMessageDisplayer;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    invoke-static {v0}, Lcom/google/glass/share/ShareLocationActivity;->access$1300(Lcom/google/glass/share/ShareLocationActivity;)Lcom/google/glass/widget/SliderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 317
    :cond_0
    new-instance v0, Lcom/google/glass/app/GlassError;

    invoke-direct {v0}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v1, Lcom/google/glass/sync/R$string;->share_location_error_text:I

    .line 318
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/sync/R$string;->error_get_my_glass_for_location:I

    .line 319
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    const/4 v1, 0x1

    .line 320
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/share/ShareLocationActivity$ErrorMessageDisplayer;->this$0:Lcom/google/glass/share/ShareLocationActivity;

    .line 321
    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->show(Landroid/content/Context;)V

    .line 322
    return-void
.end method
