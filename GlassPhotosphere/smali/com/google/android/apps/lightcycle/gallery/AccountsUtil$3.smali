.class Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$3;
.super Ljava/lang/Object;
.source "AccountsUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$accounts:[Landroid/accounts/Account;

.field final synthetic val$callback:Lcom/google/android/apps/lightcycle/util/Callback;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;Lcom/google/android/apps/lightcycle/util/Callback;[Landroid/accounts/Account;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$3;->this$0:Lcom/google/android/apps/lightcycle/gallery/AccountsUtil;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$3;->val$callback:Lcom/google/android/apps/lightcycle/util/Callback;

    iput-object p3, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$3;->val$accounts:[Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$3;->val$callback:Lcom/google/android/apps/lightcycle/util/Callback;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/AccountsUtil$3;->val$accounts:[Landroid/accounts/Account;

    aget-object v1, v1, p2

    invoke-interface {v0, v1}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 229
    return-void
.end method
