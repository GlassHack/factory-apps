.class Lcom/google/glass/maps/NavigationManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/NavigationManager;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/NavigationManager;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/google/glass/maps/NavigationManager$5;->this$0:Lcom/google/glass/maps/NavigationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 527
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager$5;->this$0:Lcom/google/glass/maps/NavigationManager;

    iget-boolean v0, v0, Lcom/google/glass/maps/NavigationManager;->hasShownPowerTip:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager$5;->this$0:Lcom/google/glass/maps/NavigationManager;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationManager;->access$800(Lcom/google/glass/maps/NavigationManager;)Lcom/google/glass/maps/NavigationManager$GuidanceState;

    move-result-object v0

    sget-object v1, Lcom/google/glass/maps/NavigationManager$GuidanceState;->ON_ROUTE:Lcom/google/glass/maps/NavigationManager$GuidanceState;

    if-ne v0, v1, :cond_0

    .line 528
    invoke-static {}, Lcom/google/glass/android/widget/ToastFactoryProvider;->getInstance()Lcom/google/glass/android/widget/ToastFactoryProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/android/widget/ToastFactoryProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/android/widget/ToastFactory;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationManager$5;->this$0:Lcom/google/glass/maps/NavigationManager;

    invoke-static {v1}, Lcom/google/glass/maps/NavigationManager;->access$900(Lcom/google/glass/maps/NavigationManager;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/glass/maps/R$string;->open_myglass_to_save_power:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/android/widget/ToastFactory;->makeToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 530
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 531
    iget-object v0, p0, Lcom/google/glass/maps/NavigationManager$5;->this$0:Lcom/google/glass/maps/NavigationManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/glass/maps/NavigationManager;->hasShownPowerTip:Z

    .line 533
    :cond_0
    return-void
.end method
