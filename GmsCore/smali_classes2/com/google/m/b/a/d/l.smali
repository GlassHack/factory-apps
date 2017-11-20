.class public final Lcom/google/m/b/a/d/l;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lcom/google/protobuf/a/a;

.field private c:Z

.field private d:J

.field private e:Z

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 15
    sget-object v0, Lcom/google/protobuf/a/a;->a:Lcom/google/protobuf/a/a;

    iput-object v0, p0, Lcom/google/m/b/a/d/l;->b:Lcom/google/protobuf/a/a;

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/m/b/a/d/l;->d:J

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/m/b/a/d/l;->f:I

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/m/b/a/d/l;->g:I

    .line 10
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/google/m/b/a/d/l;->g:I

    if-gez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/google/m/b/a/d/l;->b()I

    .line 96
    :cond_0
    iget v0, p0, Lcom/google/m/b/a/d/l;->g:I

    return v0
.end method

.method public final a(I)Lcom/google/m/b/a/d/l;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/d/l;->e:Z

    .line 54
    iput p1, p0, Lcom/google/m/b/a/d/l;->f:I

    .line 55
    return-object p0
.end method

.method public final a(J)Lcom/google/m/b/a/d/l;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/d/l;->c:Z

    .line 37
    iput-wide p1, p0, Lcom/google/m/b/a/d/l;->d:J

    .line 38
    return-object p0
.end method

.method public final a(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/d/l;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/d/l;->a:Z

    .line 20
    iput-object p1, p0, Lcom/google/m/b/a/d/l;->b:Lcom/google/protobuf/a/a;

    .line 21
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    .line 7
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
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->f()Lcom/google/protobuf/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/d/l;->a(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/d/l;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/m/b/a/d/l;->a(J)Lcom/google/m/b/a/d/l;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/d/l;->a(I)Lcom/google/m/b/a/d/l;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/google/m/b/a/d/l;->a:Z

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/d/l;->b:Lcom/google/protobuf/a/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/a;)V

    .line 81
    :cond_0
    iget-boolean v0, p0, Lcom/google/m/b/a/d/l;->c:Z

    if-eqz v0, :cond_1

    .line 82
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/m/b/a/d/l;->d:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 84
    :cond_1
    iget-boolean v0, p0, Lcom/google/m/b/a/d/l;->e:Z

    if-eqz v0, :cond_2

    .line 85
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/m/b/a/d/l;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 87
    :cond_2
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    iget-boolean v1, p0, Lcom/google/m/b/a/d/l;->a:Z

    if-eqz v1, :cond_0

    .line 103
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/d/l;->b:Lcom/google/protobuf/a/a;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/a;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 106
    :cond_0
    iget-boolean v1, p0, Lcom/google/m/b/a/d/l;->c:Z

    if-eqz v1, :cond_1

    .line 107
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/m/b/a/d/l;->d:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 110
    :cond_1
    iget-boolean v1, p0, Lcom/google/m/b/a/d/l;->e:Z

    if-eqz v1, :cond_2

    .line 111
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/m/b/a/d/l;->f:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 114
    :cond_2
    iput v0, p0, Lcom/google/m/b/a/d/l;->g:I

    .line 115
    return v0
.end method
