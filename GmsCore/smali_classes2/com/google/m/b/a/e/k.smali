.class public final Lcom/google/m/b/a/e/k;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field a:Lcom/google/protobuf/a/a;

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 814
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 819
    sget-object v0, Lcom/google/protobuf/a/a;->a:Lcom/google/protobuf/a/a;

    iput-object v0, p0, Lcom/google/m/b/a/e/k;->a:Lcom/google/protobuf/a/a;

    .line 852
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/m/b/a/e/k;->c:I

    .line 814
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 855
    iget v0, p0, Lcom/google/m/b/a/e/k;->c:I

    if-gez v0, :cond_0

    .line 857
    invoke-virtual {p0}, Lcom/google/m/b/a/e/k;->b()I

    .line 859
    :cond_0
    iget v0, p0, Lcom/google/m/b/a/e/k;->c:I

    return v0
.end method

.method public final a(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/k;
    .locals 1

    .prologue
    .line 823
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/e/k;->b:Z

    .line 824
    iput-object p1, p0, Lcom/google/m/b/a/e/k;->a:Lcom/google/protobuf/a/a;

    .line 825
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 1

    .prologue
    .line 811
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

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/e/k;->a(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/k;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 2

    .prologue
    .line 847
    iget-boolean v0, p0, Lcom/google/m/b/a/e/k;->b:Z

    if-eqz v0, :cond_0

    .line 848
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/e/k;->a:Lcom/google/protobuf/a/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/a;)V

    .line 850
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 864
    const/4 v0, 0x0

    .line 865
    iget-boolean v1, p0, Lcom/google/m/b/a/e/k;->b:Z

    if-eqz v1, :cond_0

    .line 866
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/e/k;->a:Lcom/google/protobuf/a/a;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/a;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 869
    :cond_0
    iput v0, p0, Lcom/google/m/b/a/e/k;->c:I

    .line 870
    return v0
.end method
