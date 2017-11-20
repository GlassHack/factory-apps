.class Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$4;
.super Ljava/lang/Object;
.source "AccountsUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;->showGoogleAccountSelectionDialog(Lcom/google/android/apps/lightcycle/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

.field final synthetic val$callback:Lcom/google/android/apps/lightcycle/util/Callback;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$4;->this$0:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$4;->val$callback:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$4;->val$callback:Lcom/google/android/apps/lightcycle/util/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 240
    return-void
.end method
