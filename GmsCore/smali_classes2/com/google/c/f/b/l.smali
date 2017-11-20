.class public final Lcom/google/c/f/b/l;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/google/c/f/b/k;

.field public d:Lcom/google/c/f/b/h;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Integer;

.field public h:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1193
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 1194
    iput-object v0, p0, Lcom/google/c/f/b/l;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/c/f/b/l;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/c/f/b/l;->c:Lcom/google/c/f/b/k;

    iput-object v0, p0, Lcom/google/c/f/b/l;->d:Lcom/google/c/f/b/h;

    iput-object v0, p0, Lcom/google/c/f/b/l;->e:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/c/f/b/l;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/c/f/b/l;->g:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/c/f/b/l;->h:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/c/f/b/l;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/c/f/b/l;->G:I

    .line 1195
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 1243
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 1244
    iget-object v1, p0, Lcom/google/c/f/b/l;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1245
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/c/f/b/l;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1248
    :cond_0
    iget-object v1, p0, Lcom/google/c/f/b/l;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1249
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/c/f/b/l;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1252
    :cond_1
    iget-object v1, p0, Lcom/google/c/f/b/l;->c:Lcom/google/c/f/b/k;

    if-eqz v1, :cond_2

    .line 1253
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/c/f/b/l;->c:Lcom/google/c/f/b/k;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1256
    :cond_2
    iget-object v1, p0, Lcom/google/c/f/b/l;->d:Lcom/google/c/f/b/h;

    if-eqz v1, :cond_3

    .line 1257
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/c/f/b/l;->d:Lcom/google/c/f/b/h;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1260
    :cond_3
    iget-object v1, p0, Lcom/google/c/f/b/l;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 1261
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/c/f/b/l;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1264
    :cond_4
    iget-object v1, p0, Lcom/google/c/f/b/l;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1265
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/c/f/b/l;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1268
    :cond_5
    iget-object v1, p0, Lcom/google/c/f/b/l;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 1269
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/c/f/b/l;->g:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1272
    :cond_6
    iget-object v1, p0, Lcom/google/c/f/b/l;->h:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 1273
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/c/f/b/l;->h:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1276
    :cond_7
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 1137
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/c/f/b/l;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/f/b/l;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/f/b/l;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/c/f/b/l;->c:Lcom/google/c/f/b/k;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/c/f/b/k;

    invoke-direct {v0}, Lcom/google/c/f/b/k;-><init>()V

    iput-object v0, p0, Lcom/google/c/f/b/l;->c:Lcom/google/c/f/b/k;

    :cond_1
    iget-object v0, p0, Lcom/google/c/f/b/l;->c:Lcom/google/c/f/b/k;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/google/c/f/b/l;->d:Lcom/google/c/f/b/h;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/c/f/b/h;

    invoke-direct {v0}, Lcom/google/c/f/b/h;-><init>()V

    iput-object v0, p0, Lcom/google/c/f/b/l;->d:Lcom/google/c/f/b/h;

    :cond_2
    iget-object v0, p0, Lcom/google/c/f/b/l;->d:Lcom/google/c/f/b/h;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/f/b/l;->e:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/f/b/l;->f:Ljava/lang/String;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/f/b/l;->g:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/f/b/l;->h:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/google/c/f/b/l;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1215
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/c/f/b/l;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1217
    :cond_0
    iget-object v0, p0, Lcom/google/c/f/b/l;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1218
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/c/f/b/l;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1220
    :cond_1
    iget-object v0, p0, Lcom/google/c/f/b/l;->c:Lcom/google/c/f/b/k;

    if-eqz v0, :cond_2

    .line 1221
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/c/f/b/l;->c:Lcom/google/c/f/b/k;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 1223
    :cond_2
    iget-object v0, p0, Lcom/google/c/f/b/l;->d:Lcom/google/c/f/b/h;

    if-eqz v0, :cond_3

    .line 1224
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/c/f/b/l;->d:Lcom/google/c/f/b/h;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 1226
    :cond_3
    iget-object v0, p0, Lcom/google/c/f/b/l;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 1227
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/c/f/b/l;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 1229
    :cond_4
    iget-object v0, p0, Lcom/google/c/f/b/l;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1230
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/c/f/b/l;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1232
    :cond_5
    iget-object v0, p0, Lcom/google/c/f/b/l;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 1233
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/c/f/b/l;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 1235
    :cond_6
    iget-object v0, p0, Lcom/google/c/f/b/l;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 1236
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/c/f/b/l;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 1238
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 1239
    return-void
.end method
