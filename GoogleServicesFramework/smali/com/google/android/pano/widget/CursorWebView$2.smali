.class Lcom/google/android/pano/widget/CursorWebView$2;
.super Landroid/content/BroadcastReceiver;
.source "CursorWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/CursorWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/widget/CursorWebView;


# direct methods
.method constructor <init>(Lcom/google/android/pano/widget/CursorWebView;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 215
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "action":Ljava/lang/String;
    const-string v2, "scroll"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    iget-object v2, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    const-string v3, "accel"

    iget-object v4, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v4}, Lcom/google/android/pano/widget/CursorWebView;->access$1200(Lcom/google/android/pano/widget/CursorWebView;)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/google/android/pano/widget/CursorWebView;->access$1202(Lcom/google/android/pano/widget/CursorWebView;F)F

    .line 218
    iget-object v2, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    const-string v3, "min"

    iget-object v4, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v4}, Lcom/google/android/pano/widget/CursorWebView;->access$1400(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/pano/widget/CursorWebView;->access$1402(Lcom/google/android/pano/widget/CursorWebView;I)I

    .line 219
    iget-object v2, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    const-string v3, "max"

    iget-object v4, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v4}, Lcom/google/android/pano/widget/CursorWebView;->access$1000(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/pano/widget/CursorWebView;->access$1002(Lcom/google/android/pano/widget/CursorWebView;I)I

    .line 220
    iget-object v2, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    const-string v3, "aMax"

    iget-object v4, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v4}, Lcom/google/android/pano/widget/CursorWebView;->access$1300(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/pano/widget/CursorWebView;->access$1302(Lcom/google/android/pano/widget/CursorWebView;I)I

    .line 221
    const-string v2, "CursorWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "duration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v4}, Lcom/google/android/pano/widget/CursorWebView;->access$1200(Lcom/google/android/pano/widget/CursorWebView;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " min "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v4}, Lcom/google/android/pano/widget/CursorWebView;->access$1400(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " max "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v4}, Lcom/google/android/pano/widget/CursorWebView;->access$1000(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " accelerated max "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v4}, Lcom/google/android/pano/widget/CursorWebView;->access$1300(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    const-string v2, "size"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 224
    iget-object v2, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    const-string v3, "w"

    iget-object v4, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v4}, Lcom/google/android/pano/widget/CursorWebView;->access$1500(Lcom/google/android/pano/widget/CursorWebView;)F

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/pano/widget/CursorWebView;->access$1502(Lcom/google/android/pano/widget/CursorWebView;F)F

    .line 225
    iget-object v2, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    const-string v3, "h"

    iget-object v4, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v4}, Lcom/google/android/pano/widget/CursorWebView;->access$1600(Lcom/google/android/pano/widget/CursorWebView;)F

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/pano/widget/CursorWebView;->access$1602(Lcom/google/android/pano/widget/CursorWebView;F)F

    .line 226
    iget-object v2, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v2}, Lcom/google/android/pano/widget/CursorWebView;->access$500(Lcom/google/android/pano/widget/CursorWebView;)Lcom/google/android/pano/util/TouchNavSpaceTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v3}, Lcom/google/android/pano/widget/CursorWebView;->access$1500(Lcom/google/android/pano/widget/CursorWebView;)F

    move-result v3

    iget-object v4, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v4}, Lcom/google/android/pano/widget/CursorWebView;->access$1600(Lcom/google/android/pano/widget/CursorWebView;)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/pano/util/TouchNavSpaceTracker;->setPhysicalSize(FF)V

    .line 227
    iget-object v2, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    const-string v3, "margin"

    iget-object v4, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v4}, Lcom/google/android/pano/widget/CursorWebView;->access$1700(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/pano/widget/CursorWebView;->access$1702(Lcom/google/android/pano/widget/CursorWebView;I)I

    .line 228
    const-string v2, "drawMargin"

    iget-object v3, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v3}, Lcom/google/android/pano/widget/CursorWebView;->access$1800(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 229
    .local v1, "drawMargin":I
    iget-object v2, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v2}, Lcom/google/android/pano/widget/CursorWebView;->access$1800(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 230
    iget-object v2, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v2, v1}, Lcom/google/android/pano/widget/CursorWebView;->access$1802(Lcom/google/android/pano/widget/CursorWebView;I)I

    .line 231
    iget-object v2, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    iget-object v3, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual {v3}, Lcom/google/android/pano/widget/CursorWebView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual {v4}, Lcom/google/android/pano/widget/CursorWebView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual {v5}, Lcom/google/android/pano/widget/CursorWebView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-virtual {v6}, Lcom/google/android/pano/widget/CursorWebView;->getHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/pano/widget/CursorWebView;->onSizeChanged(IIII)V

    .line 233
    :cond_2
    const-string v2, "CursorWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "width "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v4}, Lcom/google/android/pano/widget/CursorWebView;->access$1500(Lcom/google/android/pano/widget/CursorWebView;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v4}, Lcom/google/android/pano/widget/CursorWebView;->access$1600(Lcom/google/android/pano/widget/CursorWebView;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " margin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v4}, Lcom/google/android/pano/widget/CursorWebView;->access$1700(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " draw margin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v4}, Lcom/google/android/pano/widget/CursorWebView;->access$1800(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 235
    .end local v1    # "drawMargin":I
    :cond_3
    const-string v2, "cursor"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    iget-object v2, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    const-string v3, "radius"

    iget-object v4, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v4}, Lcom/google/android/pano/widget/CursorWebView;->access$1900(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/pano/widget/CursorWebView;->access$1902(Lcom/google/android/pano/widget/CursorWebView;I)I

    .line 237
    iget-object v2, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    const-string v3, "color"

    iget-object v4, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v4}, Lcom/google/android/pano/widget/CursorWebView;->access$2000(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/pano/widget/CursorWebView;->access$2002(Lcom/google/android/pano/widget/CursorWebView;I)I

    .line 238
    iget-object v2, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    const-string v3, "color2"

    iget-object v4, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v4}, Lcom/google/android/pano/widget/CursorWebView;->access$2100(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/pano/widget/CursorWebView;->access$2102(Lcom/google/android/pano/widget/CursorWebView;I)I

    .line 239
    const-string v2, "CursorWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "radius "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v4}, Lcom/google/android/pano/widget/CursorWebView;->access$1900(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " color "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v4}, Lcom/google/android/pano/widget/CursorWebView;->access$2000(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " color2 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/pano/widget/CursorWebView$2;->this$0:Lcom/google/android/pano/widget/CursorWebView;

    invoke-static {v4}, Lcom/google/android/pano/widget/CursorWebView;->access$2100(Lcom/google/android/pano/widget/CursorWebView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
