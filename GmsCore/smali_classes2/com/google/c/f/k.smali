.class public final Lcom/google/c/f/k;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1014
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 1015
    iput v0, p0, Lcom/google/c/f/k;->a:I

    iput v0, p0, Lcom/google/c/f/k;->b:I

    iput v0, p0, Lcom/google/c/f/k;->c:I

    iput v0, p0, Lcom/google/c/f/k;->d:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/c/f/k;->G:I

    .line 1016
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 1081
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 1082
    iget v1, p0, Lcom/google/c/f/k;->a:I

    if-eqz v1, :cond_0

    .line 1083
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/c/f/k;->a:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1086
    :cond_0
    iget v1, p0, Lcom/google/c/f/k;->b:I

    if-eqz v1, :cond_1

    .line 1087
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/c/f/k;->b:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1090
    :cond_1
    iget v1, p0, Lcom/google/c/f/k;->c:I

    if-eqz v1, :cond_2

    .line 1091
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/c/f/k;->c:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1094
    :cond_2
    iget v1, p0, Lcom/google/c/f/k;->d:I

    if-eqz v1, :cond_3

    .line 1095
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/c/f/k;->d:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1098
    :cond_3
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 969
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    iput v0, p0, Lcom/google/c/f/k;->a:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    iput v0, p0, Lcom/google/c/f/k;->b:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/c/f/k;->c:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iput v0, p0, Lcom/google/c/f/k;->d:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
    .line 1064
    iget v0, p0, Lcom/google/c/f/k;->a:I

    if-eqz v0, :cond_0

    .line 1065
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/c/f/k;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 1067
    :cond_0
    iget v0, p0, Lcom/google/c/f/k;->b:I

    if-eqz v0, :cond_1

    .line 1068
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/c/f/k;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 1070
    :cond_1
    iget v0, p0, Lcom/google/c/f/k;->c:I

    if-eqz v0, :cond_2

    .line 1071
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/c/f/k;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 1073
    :cond_2
    iget v0, p0, Lcom/google/c/f/k;->d:I

    if-eqz v0, :cond_3

    .line 1074
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/c/f/k;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 1076
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 1077
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1029
    if-ne p1, p0, :cond_1

    .line 1048
    :cond_0
    :goto_0
    return v0

    .line 1032
    :cond_1
    instance-of v2, p1, Lcom/google/c/f/k;

    if-nez v2, :cond_2

    move v0, v1

    .line 1033
    goto :goto_0

    .line 1035
    :cond_2
    check-cast p1, Lcom/google/c/f/k;

    .line 1036
    iget v2, p0, Lcom/google/c/f/k;->a:I

    iget v3, p1, Lcom/google/c/f/k;->a:I

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 1037
    goto :goto_0

    .line 1039
    :cond_3
    iget v2, p0, Lcom/google/c/f/k;->b:I

    iget v3, p1, Lcom/google/c/f/k;->b:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 1040
    goto :goto_0

    .line 1042
    :cond_4
    iget v2, p0, Lcom/google/c/f/k;->c:I

    iget v3, p1, Lcom/google/c/f/k;->c:I

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 1043
    goto :goto_0

    .line 1045
    :cond_5
    iget v2, p0, Lcom/google/c/f/k;->d:I

    iget v3, p1, Lcom/google/c/f/k;->d:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 1046
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 1053
    iget v0, p0, Lcom/google/c/f/k;->a:I

    add-int/lit16 v0, v0, 0x20f

    .line 1055
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/c/f/k;->b:I

    add-int/2addr v0, v1

    .line 1056
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/c/f/k;->c:I

    add-int/2addr v0, v1

    .line 1057
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/c/f/k;->d:I

    add-int/2addr v0, v1

    .line 1058
    return v0
.end method
