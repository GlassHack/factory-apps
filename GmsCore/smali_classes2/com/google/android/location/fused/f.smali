.class final Lcom/google/android/location/fused/f;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/fused/e;


# direct methods
.method public constructor <init>(Lcom/google/android/location/fused/e;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/android/location/fused/f;->a:Lcom/google/android/location/fused/e;

    .line 179
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 180
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 184
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 194
    :goto_0
    return-void

    .line 186
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/location/fused/f;->a:Lcom/google/android/location/fused/e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/google/android/location/fused/e;->a(Lcom/google/android/location/fused/e;Ljava/util/List;)Ljava/util/List;

    .line 187
    iget-object v0, p0, Lcom/google/android/location/fused/f;->a:Lcom/google/android/location/fused/e;

    invoke-static {v0}, Lcom/google/android/location/fused/e;->b(Lcom/google/android/location/fused/e;)Lcom/google/android/location/o/u;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/fused/f;->a:Lcom/google/android/location/fused/e;

    invoke-static {v1}, Lcom/google/android/location/fused/e;->a(Lcom/google/android/location/fused/e;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/location/o/u;->a(Ljava/util/List;Z)V

    goto :goto_0

    .line 191
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/location/fused/f;->a:Lcom/google/android/location/fused/e;

    invoke-static {v0}, Lcom/google/android/location/fused/e;->b(Lcom/google/android/location/fused/e;)Lcom/google/android/location/o/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/o/u;->a()V

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
