.class public final Lcom/google/m/b/a/a/s;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:J

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 5077
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 5089
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/m/b/a/a/s;->b:J

    .line 5106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/m/b/a/a/s;->d:Z

    .line 5123
    iput v2, p0, Lcom/google/m/b/a/a/s;->f:I

    .line 5163
    iput v2, p0, Lcom/google/m/b/a/a/s;->g:I

    .line 5077
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 5166
    iget v0, p0, Lcom/google/m/b/a/a/s;->g:I

    if-gez v0, :cond_0

    .line 5168
    invoke-virtual {p0}, Lcom/google/m/b/a/a/s;->b()I

    .line 5170
    :cond_0
    iget v0, p0, Lcom/google/m/b/a/a/s;->g:I

    return v0
.end method

.method public final a(I)Lcom/google/m/b/a/a/s;
    .locals 1

    .prologue
    .line 5127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/a/s;->e:Z

    .line 5128
    iput p1, p0, Lcom/google/m/b/a/a/s;->f:I

    .line 5129
    return-object p0
.end method

.method public final a(J)Lcom/google/m/b/a/a/s;
    .locals 1

    .prologue
    .line 5093
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/a/s;->a:Z

    .line 5094
    iput-wide p1, p0, Lcom/google/m/b/a/a/s;->b:J

    .line 5095
    return-object p0
.end method

.method public final a(Z)Lcom/google/m/b/a/a/s;
    .locals 1

    .prologue
    .line 5110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/a/s;->c:Z

    .line 5111
    iput-boolean p1, p0, Lcom/google/m/b/a/a/s;->d:Z

    .line 5112
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    .line 5074
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/m/b/a/a/s;->a(J)Lcom/google/m/b/a/a/s;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/a/s;->a(Z)Lcom/google/m/b/a/a/s;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/a/s;->a(I)Lcom/google/m/b/a/a/s;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 5152
    iget-boolean v0, p0, Lcom/google/m/b/a/a/s;->a:Z

    if-eqz v0, :cond_0

    .line 5153
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/m/b/a/a/s;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 5155
    :cond_0
    iget-boolean v0, p0, Lcom/google/m/b/a/a/s;->c:Z

    if-eqz v0, :cond_1

    .line 5156
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/m/b/a/a/s;->d:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 5158
    :cond_1
    iget-boolean v0, p0, Lcom/google/m/b/a/a/s;->e:Z

    if-eqz v0, :cond_2

    .line 5159
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/m/b/a/a/s;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 5161
    :cond_2
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 5175
    const/4 v0, 0x0

    .line 5176
    iget-boolean v1, p0, Lcom/google/m/b/a/a/s;->a:Z

    if-eqz v1, :cond_0

    .line 5177
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/m/b/a/a/s;->b:J

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 5180
    :cond_0
    iget-boolean v1, p0, Lcom/google/m/b/a/a/s;->c:Z

    if-eqz v1, :cond_1

    .line 5181
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/m/b/a/a/s;->d:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 5184
    :cond_1
    iget-boolean v1, p0, Lcom/google/m/b/a/a/s;->e:Z

    if-eqz v1, :cond_2

    .line 5185
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/m/b/a/a/s;->f:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5188
    :cond_2
    iput v0, p0, Lcom/google/m/b/a/a/s;->g:I

    .line 5189
    return v0
.end method
