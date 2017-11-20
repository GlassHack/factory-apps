.class Lcom/google/android/gsf/login/BaseActivity$3;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/BaseActivity;->setBackButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/BaseActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/BaseActivity;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/google/android/gsf/login/BaseActivity$3;->this$0:Lcom/google/android/gsf/login/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity$3;->this$0:Lcom/google/android/gsf/login/BaseActivity;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/BaseActivity;->onBackPressed()V

    .line 366
    return-void
.end method
