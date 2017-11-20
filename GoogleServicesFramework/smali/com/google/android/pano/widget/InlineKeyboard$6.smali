.class Lcom/google/android/pano/widget/InlineKeyboard$6;
.super Ljava/lang/Object;
.source "InlineKeyboard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 388
    iput-object p1, p0, Lcom/google/android/pano/widget/InlineKeyboard$6;->this$0:Lcom/google/android/pano/widget/InlineKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard$6;->this$0:Lcom/google/android/pano/widget/InlineKeyboard;

    invoke-static {v0}, Lcom/google/android/pano/widget/InlineKeyboard;->access$000(Lcom/google/android/pano/widget/InlineKeyboard;)Lcom/google/android/pano/widget/InlineKeyboard$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard$6;->this$0:Lcom/google/android/pano/widget/InlineKeyboard;

    invoke-static {v0}, Lcom/google/android/pano/widget/InlineKeyboard;->access$000(Lcom/google/android/pano/widget/InlineKeyboard;)Lcom/google/android/pano/widget/InlineKeyboard$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/pano/widget/InlineKeyboard$Listener;->onBackspace()V

    .line 393
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard$6;->this$0:Lcom/google/android/pano/widget/InlineKeyboard;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/pano/widget/InlineKeyboard;->access$102(Lcom/google/android/pano/widget/InlineKeyboard;Z)Z

    .line 395
    :cond_0
    return-void
.end method
