.class Lcom/google/android/gsf/login/RecoveryIntroActivity$2;
.super Ljava/lang/Object;
.source "RecoveryIntroActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/RecoveryIntroActivity;->initializeListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/RecoveryIntroActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/RecoveryIntroActivity;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/gsf/login/RecoveryIntroActivity$2;->this$0:Lcom/google/android/gsf/login/RecoveryIntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/gsf/login/RecoveryIntroActivity$2;->this$0:Lcom/google/android/gsf/login/RecoveryIntroActivity;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/login/RecoveryIntroActivity;->setResult(I)V

    .line 80
    iget-object v0, p0, Lcom/google/android/gsf/login/RecoveryIntroActivity$2;->this$0:Lcom/google/android/gsf/login/RecoveryIntroActivity;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/RecoveryIntroActivity;->finish()V

    .line 81
    return-void
.end method
