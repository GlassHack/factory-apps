.class public final Lcom/google/m/b/a/e/m;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field a:I

.field b:Lcom/google/m/b/a/e/l;

.field c:Lcom/google/m/b/a/e/q;

.field d:Lcom/google/m/b/a/e/k;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 912
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 917
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/m/b/a/e/m;->a:I

    .line 934
    iput-object v1, p0, Lcom/google/m/b/a/e/m;->b:Lcom/google/m/b/a/e/l;

    .line 954
    iput-object v1, p0, Lcom/google/m/b/a/e/m;->c:Lcom/google/m/b/a/e/q;

    .line 974
    iput-object v1, p0, Lcom/google/m/b/a/e/m;->d:Lcom/google/m/b/a/e/k;

    .line 1031
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/m/b/a/e/m;->i:I

    .line 912
    return-void
.end method

.method public static a([B)Lcom/google/m/b/a/e/m;
    .locals 2

    .prologue
    .line 1107
    new-instance v0, Lcom/google/m/b/a/e/m;

    invoke-direct {v0}, Lcom/google/m/b/a/e/m;-><init>()V

    array-length v1, p0

    invoke-super {v0, p0, v1}, Lcom/google/protobuf/a/f;->a([BI)Lcom/google/protobuf/a/f;

    move-result-object v0

    check-cast v0, Lcom/google/m/b/a/e/m;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1034
    iget v0, p0, Lcom/google/m/b/a/e/m;->i:I

    if-gez v0, :cond_0

    .line 1036
    invoke-virtual {p0}, Lcom/google/m/b/a/e/m;->b()I

    .line 1038
    :cond_0
    iget v0, p0, Lcom/google/m/b/a/e/m;->i:I

    return v0
.end method

.method public final a(I)Lcom/google/m/b/a/e/m;
    .locals 1

    .prologue
    .line 921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/e/m;->e:Z

    .line 922
    iput p1, p0, Lcom/google/m/b/a/e/m;->a:I

    .line 923
    return-object p0
.end method

.method public final a(Lcom/google/m/b/a/e/k;)Lcom/google/m/b/a/e/m;
    .locals 1

    .prologue
    .line 978
    if-nez p1, :cond_0

    .line 979
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 981
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/e/m;->h:Z

    .line 982
    iput-object p1, p0, Lcom/google/m/b/a/e/m;->d:Lcom/google/m/b/a/e/k;

    .line 983
    return-object p0
.end method

.method public final a(Lcom/google/m/b/a/e/l;)Lcom/google/m/b/a/e/m;
    .locals 1

    .prologue
    .line 938
    if-nez p1, :cond_0

    .line 939
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 941
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/e/m;->f:Z

    .line 942
    iput-object p1, p0, Lcom/google/m/b/a/e/m;->b:Lcom/google/m/b/a/e/l;

    .line 943
    return-object p0
.end method

.method public final a(Lcom/google/m/b/a/e/q;)Lcom/google/m/b/a/e/m;
    .locals 1

    .prologue
    .line 958
    if-nez p1, :cond_0

    .line 959
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 961
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/e/m;->g:Z

    .line 962
    iput-object p1, p0, Lcom/google/m/b/a/e/m;->c:Lcom/google/m/b/a/e/q;

    .line 963
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 1

    .prologue
    .line 909
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

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/e/m;->a(I)Lcom/google/m/b/a/e/m;

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/google/m/b/a/e/l;

    invoke-direct {v0}, Lcom/google/m/b/a/e/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/e/m;->a(Lcom/google/m/b/a/e/l;)Lcom/google/m/b/a/e/m;

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/google/m/b/a/e/q;

    invoke-direct {v0}, Lcom/google/m/b/a/e/q;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/e/m;->a(Lcom/google/m/b/a/e/q;)Lcom/google/m/b/a/e/m;

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/google/m/b/a/e/k;

    invoke-direct {v0}, Lcom/google/m/b/a/e/k;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/e/m;->a(Lcom/google/m/b/a/e/k;)Lcom/google/m/b/a/e/m;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 2

    .prologue
    .line 1017
    iget-boolean v0, p0, Lcom/google/m/b/a/e/m;->e:Z

    if-eqz v0, :cond_0

    .line 1018
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/m/b/a/e/m;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 1020
    :cond_0
    iget-boolean v0, p0, Lcom/google/m/b/a/e/m;->f:Z

    if-eqz v0, :cond_1

    .line 1021
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/m/b/a/e/m;->b:Lcom/google/m/b/a/e/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1023
    :cond_1
    iget-boolean v0, p0, Lcom/google/m/b/a/e/m;->g:Z

    if-eqz v0, :cond_2

    .line 1024
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/m/b/a/e/m;->c:Lcom/google/m/b/a/e/q;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1026
    :cond_2
    iget-boolean v0, p0, Lcom/google/m/b/a/e/m;->h:Z

    if-eqz v0, :cond_3

    .line 1027
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/m/b/a/e/m;->d:Lcom/google/m/b/a/e/k;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1029
    :cond_3
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 1043
    const/4 v0, 0x0

    .line 1044
    iget-boolean v1, p0, Lcom/google/m/b/a/e/m;->e:Z

    if-eqz v1, :cond_0

    .line 1045
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/m/b/a/e/m;->a:I

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1048
    :cond_0
    iget-boolean v1, p0, Lcom/google/m/b/a/e/m;->f:Z

    if-eqz v1, :cond_1

    .line 1049
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/m/b/a/e/m;->b:Lcom/google/m/b/a/e/l;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1052
    :cond_1
    iget-boolean v1, p0, Lcom/google/m/b/a/e/m;->g:Z

    if-eqz v1, :cond_2

    .line 1053
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/m/b/a/e/m;->c:Lcom/google/m/b/a/e/q;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1056
    :cond_2
    iget-boolean v1, p0, Lcom/google/m/b/a/e/m;->h:Z

    if-eqz v1, :cond_3

    .line 1057
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/m/b/a/e/m;->d:Lcom/google/m/b/a/e/k;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1060
    :cond_3
    iput v0, p0, Lcom/google/m/b/a/e/m;->i:I

    .line 1061
    return v0
.end method
