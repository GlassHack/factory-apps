.class public final Lcom/google/android/location/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/os/a;


# instance fields
.field public final a:Lcom/google/android/location/k;

.field private final b:Ljava/util/List;

.field private final c:Ljava/lang/Thread;

.field private d:Lcom/google/android/location/ap;

.field private e:Lcom/google/android/location/os/b;


# direct methods
.method public constructor <init>(Lcom/google/android/location/k;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    .line 40
    iput-object p1, p0, Lcom/google/android/location/u;->a:Lcom/google/android/location/k;

    .line 41
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/u;->c:Ljava/lang/Thread;

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/location/os/at;Lcom/google/android/location/f/ag;Z)Lcom/google/android/location/ap;
    .locals 3

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 51
    iget-object v0, p0, Lcom/google/android/location/u;->d:Lcom/google/android/location/ap;

    if-eqz v0, :cond_1

    .line 52
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "CallbacksDispatcher"

    const-string v1, "Network provider already created."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    .line 55
    :cond_1
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_2

    const-string v0, "CallbacksDispatcher"

    const-string v1, "Creating NetworkProvider."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_2
    new-instance v0, Lcom/google/android/location/os/b;

    invoke-direct {v0, p1}, Lcom/google/android/location/os/b;-><init>(Lcom/google/android/location/os/at;)V

    iput-object v0, p0, Lcom/google/android/location/u;->e:Lcom/google/android/location/os/b;

    .line 57
    new-instance v0, Lcom/google/android/location/ap;

    iget-object v1, p0, Lcom/google/android/location/u;->e:Lcom/google/android/location/os/b;

    iget-object v2, p0, Lcom/google/android/location/u;->a:Lcom/google/android/location/k;

    iget-object v2, v2, Lcom/google/android/location/k;->a:Lcom/google/android/location/activity/k;

    invoke-direct {v0, v1, p2, v2, p3}, Lcom/google/android/location/ap;-><init>(Lcom/google/android/location/os/at;Lcom/google/android/location/f/ag;Lcom/google/android/location/activity/k;Z)V

    iput-object v0, p0, Lcom/google/android/location/u;->d:Lcom/google/android/location/ap;

    .line 59
    iget-object v0, p0, Lcom/google/android/location/u;->d:Lcom/google/android/location/ap;

    invoke-virtual {v0}, Lcom/google/android/location/ap;->d()V

    .line 60
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/location/u;->d:Lcom/google/android/location/ap;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/google/android/location/u;->d:Lcom/google/android/location/ap;

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 248
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/a;

    .line 249
    invoke-interface {v0}, Lcom/google/android/location/os/a;->a()V

    goto :goto_0

    .line 251
    :cond_0
    return-void
.end method

.method public final a(IIIZLcom/google/android/location/p/j;)V
    .locals 7

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 93
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/a;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 94
    invoke-interface/range {v0 .. v5}, Lcom/google/android/location/os/a;->a(IIIZLcom/google/android/location/p/j;)V

    goto :goto_0

    .line 96
    :cond_0
    return-void
.end method

.method public final a(IIZ)V
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 157
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/a;

    .line 158
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/location/os/a;->a(IIZ)V

    goto :goto_0

    .line 160
    :cond_0
    return-void
.end method

.method public final a(IIZZZLcom/google/android/location/p/j;)V
    .locals 8

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 223
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/a;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 224
    invoke-interface/range {v0 .. v6}, Lcom/google/android/location/os/a;->a(IIZZZLcom/google/android/location/p/j;)V

    goto :goto_0

    .line 227
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 213
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/a;

    .line 214
    invoke-interface {v0, p1}, Lcom/google/android/location/os/a;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    goto :goto_0

    .line 216
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/location/activity/bj;)V
    .locals 2

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 205
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/a;

    .line 206
    invoke-interface {v0, p1}, Lcom/google/android/location/os/a;->a(Lcom/google/android/location/activity/bj;)V

    goto :goto_0

    .line 208
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/location/f/ag;)V
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 197
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/a;

    .line 198
    invoke-interface {v0, p1}, Lcom/google/android/location/os/a;->a(Lcom/google/android/location/f/ag;)V

    goto :goto_0

    .line 200
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/location/f/bg;)V
    .locals 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 327
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/a;

    .line 328
    invoke-interface {v0, p1}, Lcom/google/android/location/os/a;->a(Lcom/google/android/location/f/bg;)V

    goto :goto_0

    .line 330
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/location/f/g;)V
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 109
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/a;

    .line 110
    invoke-interface {v0, p1}, Lcom/google/android/location/os/a;->a(Lcom/google/android/location/f/g;)V

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/location/k/k;)V
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 101
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/a;

    .line 102
    invoke-interface {v0, p1}, Lcom/google/android/location/os/a;->a(Lcom/google/android/location/k/k;)V

    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/location/k/k;J)V
    .locals 2

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 264
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/a;

    .line 265
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/location/os/a;->a(Lcom/google/android/location/k/k;J)V

    goto :goto_0

    .line 267
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/location/os/ah;)V
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 133
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/a;

    .line 134
    invoke-interface {v0, p1}, Lcom/google/android/location/os/a;->a(Lcom/google/android/location/os/ah;)V

    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/location/os/av;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 240
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/a;

    .line 241
    invoke-interface {v0, p1, p2}, Lcom/google/android/location/os/a;->a(Lcom/google/android/location/os/av;Ljava/lang/Object;)V

    goto :goto_0

    .line 243
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/g/a/b/b/a;)V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 117
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/a;

    .line 118
    invoke-interface {v0, p1}, Lcom/google/android/location/os/a;->a(Lcom/google/g/a/b/b/a;)V

    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 165
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/a;

    .line 166
    invoke-interface {v0, p1}, Lcom/google/android/location/os/a;->a(Z)V

    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 232
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/a;

    .line 233
    invoke-interface {v0, p1, p2}, Lcom/google/android/location/os/a;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_0
    return-void
.end method

.method public final a(ZZ)V
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 149
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/a;

    .line 150
    invoke-interface {v0, p1, p2}, Lcom/google/android/location/os/a;->a(ZZ)V

    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method

.method public final a(ZZI)V
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 189
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/a;

    .line 190
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/location/os/a;->a(ZZI)V

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method

.method public final a([Lcom/google/android/location/f/bh;Z)V
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 141
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/a;

    .line 142
    invoke-interface {v0, p1, p2}, Lcom/google/android/location/os/a;->a([Lcom/google/android/location/f/bh;Z)V

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 256
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/a;

    .line 257
    invoke-interface {v0}, Lcom/google/android/location/os/a;->b()V

    goto :goto_0

    .line 259
    :cond_0
    return-void
.end method

.method public final b(Lcom/google/g/a/b/b/a;)V
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 125
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/a;

    .line 126
    invoke-interface {v0, p1}, Lcom/google/android/location/os/a;->b(Lcom/google/g/a/b/b/a;)V

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/a;

    .line 351
    invoke-interface {v0, p1}, Lcom/google/android/location/os/a;->b(Z)V

    goto :goto_0

    .line 353
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 272
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/a;

    .line 273
    invoke-interface {v0}, Lcom/google/android/location/os/a;->c()V

    goto :goto_0

    .line 275
    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 2

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 343
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/a;

    .line 344
    invoke-interface {v0, p1}, Lcom/google/android/location/os/a;->c(Z)V

    goto :goto_0

    .line 346
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 76
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/a;

    .line 77
    invoke-interface {v0}, Lcom/google/android/location/os/a;->d()V

    goto :goto_0

    .line 79
    :cond_0
    return-void
.end method

.method public final d(Z)V
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 84
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/a;

    .line 85
    invoke-interface {v0, p1}, Lcom/google/android/location/os/a;->d(Z)V

    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 335
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/a;

    .line 336
    invoke-interface {v0}, Lcom/google/android/location/os/a;->e()V

    goto :goto_0

    .line 338
    :cond_0
    return-void
.end method

.method public final e(Z)V
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 173
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/a;

    .line 174
    invoke-interface {v0, p1}, Lcom/google/android/location/os/a;->e(Z)V

    goto :goto_0

    .line 176
    :cond_0
    return-void
.end method

.method public final f(Z)V
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 181
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/a;

    .line 182
    invoke-interface {v0, p1}, Lcom/google/android/location/os/a;->f(Z)V

    goto :goto_0

    .line 184
    :cond_0
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 305
    iget-object v0, p0, Lcom/google/android/location/u;->d:Lcom/google/android/location/ap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()V
    .locals 4

    .prologue
    .line 318
    sget-boolean v0, Lcom/google/android/location/j/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/u;->c:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 319
    new-instance v0, Ljava/lang/IllegalAccessError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This method should only be called on thread id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/u;->c:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_0
    return-void
.end method

.method public final g(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 287
    invoke-virtual {p0}, Lcom/google/android/location/u;->g()V

    .line 288
    iget-object v0, p0, Lcom/google/android/location/u;->d:Lcom/google/android/location/ap;

    if-nez v0, :cond_1

    .line 289
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "CallbacksDispatcher"

    const-string v1, "Network provider already destroyed."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/location/u;->c()V

    .line 293
    iget-object v0, p0, Lcom/google/android/location/u;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/location/u;->d:Lcom/google/android/location/ap;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 294
    iget-object v0, p0, Lcom/google/android/location/u;->d:Lcom/google/android/location/ap;

    invoke-virtual {v0, p1}, Lcom/google/android/location/ap;->d(Z)V

    .line 295
    iput-object v2, p0, Lcom/google/android/location/u;->d:Lcom/google/android/location/ap;

    .line 296
    iget-object v0, p0, Lcom/google/android/location/u;->e:Lcom/google/android/location/os/b;

    invoke-virtual {v0}, Lcom/google/android/location/os/b;->a()V

    .line 297
    iput-object v2, p0, Lcom/google/android/location/u;->e:Lcom/google/android/location/os/b;

    goto :goto_0
.end method
