.class public final Lcom/google/b/a/a/j;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:I

.field private b:Z

.field private c:I

.field private d:Z

.field private e:Z

.field private f:J

.field private g:Z

.field private h:Lcom/google/b/a/a/c;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 19
    iput v0, p0, Lcom/google/b/a/a/j;->c:I

    .line 36
    iput v0, p0, Lcom/google/b/a/a/j;->a:I

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/b/a/a/j;->f:J

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/b/a/a/j;->h:Lcom/google/b/a/a/c;

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/a/j;->i:I

    .line 14
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/google/b/a/a/j;->i:I

    if-gez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/google/b/a/a/j;->b()I

    .line 124
    :cond_0
    iget v0, p0, Lcom/google/b/a/a/j;->i:I

    return v0
.end method

.method public final a(I)Lcom/google/b/a/a/j;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/j;->d:Z

    .line 41
    iput p1, p0, Lcom/google/b/a/a/j;->a:I

    .line 42
    return-object p0
.end method

.method public final a(J)Lcom/google/b/a/a/j;
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/j;->e:Z

    .line 58
    iput-wide p1, p0, Lcom/google/b/a/a/j;->f:J

    .line 59
    return-object p0
.end method

.method public final a(Lcom/google/b/a/a/c;)Lcom/google/b/a/a/j;
    .locals 1

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 77
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/j;->g:Z

    .line 78
    iput-object p1, p0, Lcom/google/b/a/a/j;->h:Lcom/google/b/a/a/c;

    .line 79
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    .line 11
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
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/b/a/a/j;->b:Z

    iput v0, p0, Lcom/google/b/a/a/j;->c:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/b/a/a/j;->a(I)Lcom/google/b/a/a/j;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/b/a/a/j;->a(J)Lcom/google/b/a/a/j;

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/google/b/a/a/c;

    invoke-direct {v0}, Lcom/google/b/a/a/c;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/b/a/a/j;->a(Lcom/google/b/a/a/c;)Lcom/google/b/a/a/j;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/google/b/a/a/j;->b:Z

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/b/a/a/j;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 106
    :cond_0
    iget-boolean v0, p0, Lcom/google/b/a/a/j;->d:Z

    if-eqz v0, :cond_1

    .line 107
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/b/a/a/j;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 109
    :cond_1
    iget-boolean v0, p0, Lcom/google/b/a/a/j;->e:Z

    if-eqz v0, :cond_2

    .line 110
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/b/a/a/j;->f:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 112
    :cond_2
    iget-boolean v0, p0, Lcom/google/b/a/a/j;->g:Z

    if-eqz v0, :cond_3

    .line 113
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/a/j;->h:Lcom/google/b/a/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 115
    :cond_3
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    iget-boolean v1, p0, Lcom/google/b/a/a/j;->b:Z

    if-eqz v1, :cond_0

    .line 131
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/b/a/a/j;->c:I

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 134
    :cond_0
    iget-boolean v1, p0, Lcom/google/b/a/a/j;->d:Z

    if-eqz v1, :cond_1

    .line 135
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/b/a/a/j;->a:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 138
    :cond_1
    iget-boolean v1, p0, Lcom/google/b/a/a/j;->e:Z

    if-eqz v1, :cond_2

    .line 139
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/b/a/a/j;->f:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 142
    :cond_2
    iget-boolean v1, p0, Lcom/google/b/a/a/j;->g:Z

    if-eqz v1, :cond_3

    .line 143
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/b/a/a/j;->h:Lcom/google/b/a/a/c;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 146
    :cond_3
    iput v0, p0, Lcom/google/b/a/a/j;->i:I

    .line 147
    return v0
.end method
