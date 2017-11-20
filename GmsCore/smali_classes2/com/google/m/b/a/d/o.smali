.class public final Lcom/google/m/b/a/d/o;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field private c:Z

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 945
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 950
    iput v0, p0, Lcom/google/m/b/a/d/o;->a:I

    .line 967
    iput v0, p0, Lcom/google/m/b/a/d/o;->b:I

    .line 1004
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/m/b/a/d/o;->e:I

    .line 945
    return-void
.end method

.method public static a([B)Lcom/google/m/b/a/d/o;
    .locals 2

    .prologue
    .line 1058
    new-instance v0, Lcom/google/m/b/a/d/o;

    invoke-direct {v0}, Lcom/google/m/b/a/d/o;-><init>()V

    array-length v1, p0

    invoke-super {v0, p0, v1}, Lcom/google/protobuf/a/f;->a([BI)Lcom/google/protobuf/a/f;

    move-result-object v0

    check-cast v0, Lcom/google/m/b/a/d/o;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1007
    iget v0, p0, Lcom/google/m/b/a/d/o;->e:I

    if-gez v0, :cond_0

    .line 1009
    invoke-virtual {p0}, Lcom/google/m/b/a/d/o;->b()I

    .line 1011
    :cond_0
    iget v0, p0, Lcom/google/m/b/a/d/o;->e:I

    return v0
.end method

.method public final a(I)Lcom/google/m/b/a/d/o;
    .locals 1

    .prologue
    .line 954
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/d/o;->c:Z

    .line 955
    iput p1, p0, Lcom/google/m/b/a/d/o;->a:I

    .line 956
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 1

    .prologue
    .line 942
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

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/d/o;->a(I)Lcom/google/m/b/a/d/o;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/d/o;->b(I)Lcom/google/m/b/a/d/o;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 2

    .prologue
    .line 996
    iget-boolean v0, p0, Lcom/google/m/b/a/d/o;->c:Z

    if-eqz v0, :cond_0

    .line 997
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/m/b/a/d/o;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 999
    :cond_0
    iget-boolean v0, p0, Lcom/google/m/b/a/d/o;->d:Z

    if-eqz v0, :cond_1

    .line 1000
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/m/b/a/d/o;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 1002
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 1016
    const/4 v0, 0x0

    .line 1017
    iget-boolean v1, p0, Lcom/google/m/b/a/d/o;->c:Z

    if-eqz v1, :cond_0

    .line 1018
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/m/b/a/d/o;->a:I

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1021
    :cond_0
    iget-boolean v1, p0, Lcom/google/m/b/a/d/o;->d:Z

    if-eqz v1, :cond_1

    .line 1022
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/m/b/a/d/o;->b:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1025
    :cond_1
    iput v0, p0, Lcom/google/m/b/a/d/o;->e:I

    .line 1026
    return v0
.end method

.method public final b(I)Lcom/google/m/b/a/d/o;
    .locals 1

    .prologue
    .line 971
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/d/o;->d:Z

    .line 972
    iput p1, p0, Lcom/google/m/b/a/d/o;->b:I

    .line 973
    return-object p0
.end method
