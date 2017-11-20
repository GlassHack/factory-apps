.class Lcom/google/android/gsf/login/UsernamePasswordActivity$4;
.super Ljava/lang/Object;
.source "UsernamePasswordActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/UsernamePasswordActivity;->showAgreementDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/UsernamePasswordActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/UsernamePasswordActivity;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity$4;->this$0:Lcom/google/android/gsf/login/UsernamePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 448
    return-void
.end method
