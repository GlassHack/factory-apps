.class public final Lcom/google/c/f/b/k;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 896
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 897
    iput-object v1, p0, Lcom/google/c/f/b/k;->a:Ljava/lang/Integer;

    sget-object v0, Lcom/google/protobuf/nano/m;->f:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/c/f/b/k;->b:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/c/f/b/k;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/c/f/b/k;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/c/f/b/k;->e:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/c/f/b/k;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/c/f/b/k;->G:I

    .line 898
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 939
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 940
    iget-object v2, p0, Lcom/google/c/f/b/k;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 941
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/c/f/b/k;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 944
    :cond_0
    iget-object v2, p0, Lcom/google/c/f/b/k;->b:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/c/f/b/k;->b:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v1

    move v3, v1

    .line 947
    :goto_0
    iget-object v4, p0, Lcom/google/c/f/b/k;->b:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 948
    iget-object v4, p0, Lcom/google/c/f/b/k;->b:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 949
    if-eqz v4, :cond_1

    .line 950
    add-int/lit8 v3, v3, 0x1

    .line 951
    invoke-static {v4}, Lcom/google/protobuf/nano/b;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 947
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 955
    :cond_2
    add-int/2addr v0, v2

    .line 956
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 958
    :cond_3
    iget-object v1, p0, Lcom/google/c/f/b/k;->c:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 959
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/c/f/b/k;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 962
    :cond_4
    iget-object v1, p0, Lcom/google/c/f/b/k;->d:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 963
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/c/f/b/k;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 966
    :cond_5
    iget-object v1, p0, Lcom/google/c/f/b/k;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 967
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/c/f/b/k;->e:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 970
    :cond_6
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 864
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/c/f/b/k;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/f/b/k;->a:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/c/f/b/k;->b:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/c/f/b/k;->b:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/c/f/b/k;->b:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/c/f/b/k;->b:[Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/f/b/k;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/f/b/k;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/f/b/k;->e:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    .line 914
    iget-object v0, p0, Lcom/google/c/f/b/k;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 915
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/c/f/b/k;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/google/c/f/b/k;->b:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/c/f/b/k;->b:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 918
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/c/f/b/k;->b:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 919
    iget-object v1, p0, Lcom/google/c/f/b/k;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 920
    if-eqz v1, :cond_1

    .line 921
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 918
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 925
    :cond_2
    iget-object v0, p0, Lcom/google/c/f/b/k;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 926
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/c/f/b/k;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 928
    :cond_3
    iget-object v0, p0, Lcom/google/c/f/b/k;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 929
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/c/f/b/k;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 931
    :cond_4
    iget-object v0, p0, Lcom/google/c/f/b/k;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 932
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/c/f/b/k;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 934
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 935
    return-void
.end method
