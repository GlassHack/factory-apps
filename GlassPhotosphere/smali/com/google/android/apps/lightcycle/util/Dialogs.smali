.class public Lcom/google/android/apps/lightcycle/util/Dialogs;
.super Ljava/lang/Object;
.source "Dialogs.java"


# static fields
.field public static final NO_TITLE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createOkDialog(ILjava/lang/CharSequence;Landroid/content/Context;Lcom/google/android/apps/lightcycle/util/Callback;)Landroid/app/AlertDialog;
    .locals 4
    .param p0, "titleId"    # I
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Landroid/app/AlertDialog;"
        }
    .end annotation

    .prologue
    .line 89
    .local p3, "closedCallback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/Void;>;"
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 90
    .local v0, "dialog":Landroid/app/AlertDialog;
    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    .line 91
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 93
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 94
    const/4 v1, -0x3

    sget v2, Lcom/google/android/apps/lightcycle/R$string;->ok:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/google/android/apps/lightcycle/util/Dialogs$2;

    invoke-direct {v3, p3}, Lcom/google/android/apps/lightcycle/util/Dialogs$2;-><init>(Lcom/google/android/apps/lightcycle/util/Callback;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 105
    return-object v0
.end method

.method public static createProgressDialog(ILandroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 2
    .param p0, "titleId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 117
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 118
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 119
    return-object v0
.end method

.method public static showDialog(IILandroid/content/Context;Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 1
    .param p0, "titleId"    # I
    .param p1, "messageId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p3, "closedCallback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/Void;>;"
    invoke-virtual {p2, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/google/android/apps/lightcycle/util/Dialogs;->showDialog(ILjava/lang/CharSequence;Landroid/content/Context;Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 51
    return-void
.end method

.method public static showDialog(ILjava/lang/CharSequence;Landroid/content/Context;Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 1
    .param p0, "titleId"    # I
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p3, "closedCallback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/Void;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/lightcycle/util/Dialogs;->createOkDialog(ILjava/lang/CharSequence;Landroid/content/Context;Lcom/google/android/apps/lightcycle/util/Callback;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 36
    return-void
.end method

.method public static showOkCancelDialog(ILjava/lang/String;Landroid/content/Context;Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 4
    .param p0, "titleId"    # I
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p3, "closedCallback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/Void;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/lightcycle/util/Dialogs;->createOkDialog(ILjava/lang/CharSequence;Landroid/content/Context;Lcom/google/android/apps/lightcycle/util/Callback;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 67
    .local v0, "dialog":Landroid/app/AlertDialog;
    const/4 v1, -0x2

    sget v2, Lcom/google/android/apps/lightcycle/R$string;->panorama_cancel_button_text:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/google/android/apps/lightcycle/util/Dialogs$1;

    invoke-direct {v3}, Lcom/google/android/apps/lightcycle/util/Dialogs$1;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 75
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 76
    return-void
.end method
