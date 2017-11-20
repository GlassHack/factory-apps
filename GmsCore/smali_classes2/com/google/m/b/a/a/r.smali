.class public final Lcom/google/m/b/a/a/r;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lcom/google/protobuf/a/a;

.field private c:Z

.field private d:J

.field private e:Z

.field private f:Lcom/google/m/b/a/a/d;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6003
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 6008
    sget-object v0, Lcom/google/protobuf/a/a;->a:Lcom/google/protobuf/a/a;

    iput-object v0, p0, Lcom/google/m/b/a/a/r;->b:Lcom/google/protobuf/a/a;

    .line 6025
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/m/b/a/a/r;->d:J

    .line 6042
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/m/b/a/a/r;->f:Lcom/google/m/b/a/a/d;

    .line 6085
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/m/b/a/a/r;->g:I

    .line 6003
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 6088
    iget v0, p0, Lcom/google/m/b/a/a/r;->g:I

    if-gez v0, :cond_0

    .line 6090
    invoke-virtual {p0}, Lcom/google/m/b/a/a/r;->b()I

    .line 6092
    :cond_0
    iget v0, p0, Lcom/google/m/b/a/a/r;->g:I

    return v0
.end method

.method public final a(J)Lcom/google/m/b/a/a/r;
    .locals 1

    .prologue
    .line 6029
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/a/r;->c:Z

    .line 6030
    iput-wide p1, p0, Lcom/google/m/b/a/a/r;->d:J

    .line 6031
    return-object p0
.end method

.method public final a(Lcom/google/m/b/a/a/d;)Lcom/google/m/b/a/a/r;
    .locals 1

    .prologue
    .line 6046
    if-nez p1, :cond_0

    .line 6047
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6049
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/a/r;->e:Z

    .line 6050
    iput-object p1, p0, Lcom/google/m/b/a/a/r;->f:Lcom/google/m/b/a/a/d;

    .line 6051
    return-object p0
.end method

.method public final a(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/a/r;
    .locals 1

    .prologue
    .line 6012
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/a/r;->a:Z

    .line 6013
    iput-object p1, p0, Lcom/google/m/b/a/a/r;->b:Lcom/google/protobuf/a/a;

    .line 6014
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    .line 6000
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

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/a/r;->a(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/a/r;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/m/b/a/a/r;->a(J)Lcom/google/m/b/a/a/r;

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/google/m/b/a/a/d;

    invoke-direct {v0}, Lcom/google/m/b/a/a/d;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/a/r;->a(Lcom/google/m/b/a/a/d;)Lcom/google/m/b/a/a/r;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 6074
    iget-boolean v0, p0, Lcom/google/m/b/a/a/r;->a:Z

    if-eqz v0, :cond_0

    .line 6075
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/a/r;->b:Lcom/google/protobuf/a/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/a;)V

    .line 6077
    :cond_0
    iget-boolean v0, p0, Lcom/google/m/b/a/a/r;->c:Z

    if-eqz v0, :cond_1

    .line 6078
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/m/b/a/a/r;->d:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 6080
    :cond_1
    iget-boolean v0, p0, Lcom/google/m/b/a/a/r;->e:Z

    if-eqz v0, :cond_2

    .line 6081
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/m/b/a/a/r;->f:Lcom/google/m/b/a/a/d;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 6083
    :cond_2
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 6097
    const/4 v0, 0x0

    .line 6098
    iget-boolean v1, p0, Lcom/google/m/b/a/a/r;->a:Z

    if-eqz v1, :cond_0

    .line 6099
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/a/r;->b:Lcom/google/protobuf/a/a;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/a;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 6102
    :cond_0
    iget-boolean v1, p0, Lcom/google/m/b/a/a/r;->c:Z

    if-eqz v1, :cond_1

    .line 6103
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/m/b/a/a/r;->d:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6106
    :cond_1
    iget-boolean v1, p0, Lcom/google/m/b/a/a/r;->e:Z

    if-eqz v1, :cond_2

    .line 6107
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/m/b/a/a/r;->f:Lcom/google/m/b/a/a/d;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6110
    :cond_2
    iput v0, p0, Lcom/google/m/b/a/a/r;->g:I

    .line 6111
    return v0
.end method
