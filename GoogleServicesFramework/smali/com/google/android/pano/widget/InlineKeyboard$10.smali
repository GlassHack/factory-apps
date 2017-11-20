.class Lcom/google/android/pano/widget/InlineKeyboard$10;
.super Ljava/lang/Object;
.source "InlineKeyboard.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/pano/widget/InlineKeyboard;->addKeys(Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/widget/InlineKeyboard;


# direct methods
.method constructor <init>(Lcom/google/android/pano/widget/InlineKeyboard;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/google/android/pano/widget/InlineKeyboard$10;->this$0:Lcom/google/android/pano/widget/InlineKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 536
    const/16 v1, 0x15

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 539
    iget-object v1, p0, Lcom/google/android/pano/widget/InlineKeyboard$10;->this$0:Lcom/google/android/pano/widget/InlineKeyboard;

    invoke-static {v1}, Lcom/google/android/pano/widget/InlineKeyboard;->access$900(Lcom/google/android/pano/widget/InlineKeyboard;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/pano/widget/InlineKeyboard$10;->this$0:Lcom/google/android/pano/widget/InlineKeyboard;

    invoke-static {v1}, Lcom/google/android/pano/widget/InlineKeyboard;->access$900(Lcom/google/android/pano/widget/InlineKeyboard;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 541
    :cond_0
    return v0
.end method
