.class final Lcom/google/android/apps/lightcycle/util/Dialogs$2;
.super Ljava/lang/Object;
.source "Dialogs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/util/Dialogs;->createOkDialog(ILjava/lang/CharSequence;Landroid/content/Context;Lcom/google/android/apps/lightcycle/util/Callback;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$closedCallback:Lcom/google/android/apps/lightcycle/util/Callback;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/util/Dialogs$2;->val$closedCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 99
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/Dialogs$2;->val$closedCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/Dialogs$2;->val$closedCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 103
    :cond_0
    return-void
.end method
