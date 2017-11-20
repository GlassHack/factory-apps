.class Lcom/google/glass/maps/DirectionsManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/DirectionsManager;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/DirectionsManager;)V
    .locals 0

    .prologue
    .line 610
    iput-object p1, p0, Lcom/google/glass/maps/DirectionsManager$3;->this$0:Lcom/google/glass/maps/DirectionsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 614
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$3;->this$0:Lcom/google/glass/maps/DirectionsManager;

    iget-boolean v0, v0, Lcom/google/glass/maps/DirectionsManager;->hasShownPowerTip:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$3;->this$0:Lcom/google/glass/maps/DirectionsManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/DirectionsManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    invoke-static {}, Lcom/google/glass/android/widget/ToastFactoryProvider;->getInstance()Lcom/google/glass/android/widget/ToastFactoryProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/android/widget/ToastFactoryProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/android/widget/ToastFactory;

    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager$3;->this$0:Lcom/google/glass/maps/DirectionsManager;

    invoke-static {v1}, Lcom/google/glass/maps/DirectionsManager;->access$300(Lcom/google/glass/maps/DirectionsManager;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/glass/maps/R$string;->open_myglass_to_save_power:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/android/widget/ToastFactory;->makeToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 617
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 618
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager$3;->this$0:Lcom/google/glass/maps/DirectionsManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/glass/maps/DirectionsManager;->hasShownPowerTip:Z

    .line 620
    :cond_0
    return-void
.end method
