.class Lcom/google/userfeedback/android/api/UserFeedback$1;
.super Ljava/lang/Object;
.source "UserFeedback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/userfeedback/android/api/UserFeedback;->buildDialog(Landroid/app/Activity;ZZLjava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/userfeedback/android/api/UserFeedback;


# direct methods
.method constructor <init>(Lcom/google/userfeedback/android/api/UserFeedback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/userfeedback/android/api/UserFeedback;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedback$1;->this$0:Lcom/google/userfeedback/android/api/UserFeedback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 265
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 266
    return-void
.end method
