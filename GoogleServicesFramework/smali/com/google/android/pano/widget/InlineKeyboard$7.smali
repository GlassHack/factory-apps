.class Lcom/google/android/pano/widget/InlineKeyboard$7;
.super Ljava/lang/Object;
.source "InlineKeyboard.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/pano/widget/InlineKeyboard;->setupViews()V
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
    .line 397
    iput-object p1, p0, Lcom/google/android/pano/widget/InlineKeyboard$7;->this$0:Lcom/google/android/pano/widget/InlineKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard$7;->this$0:Lcom/google/android/pano/widget/InlineKeyboard;

    invoke-static {v0}, Lcom/google/android/pano/widget/InlineKeyboard;->access$000(Lcom/google/android/pano/widget/InlineKeyboard;)Lcom/google/android/pano/widget/InlineKeyboard$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard$7;->this$0:Lcom/google/android/pano/widget/InlineKeyboard;

    invoke-static {v0}, Lcom/google/android/pano/widget/InlineKeyboard;->access$000(Lcom/google/android/pano/widget/InlineKeyboard;)Lcom/google/android/pano/widget/InlineKeyboard$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/pano/widget/InlineKeyboard$Listener;->onBackspace()V

    .line 402
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard$7;->this$0:Lcom/google/android/pano/widget/InlineKeyboard;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/pano/widget/InlineKeyboard;->access$102(Lcom/google/android/pano/widget/InlineKeyboard;Z)Z

    .line 403
    new-instance v0, Lcom/google/android/pano/widget/InlineKeyboard$7$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/pano/widget/InlineKeyboard$7$1;-><init>(Lcom/google/android/pano/widget/InlineKeyboard$7;Landroid/view/View;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 414
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
