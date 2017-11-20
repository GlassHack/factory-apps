.class public final Lcom/google/n/a/a/a/a/b;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1023
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 1024
    iput-object v0, p0, Lcom/google/n/a/a/a/a/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/b;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/b;->d:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/n/a/a/a/a/b;->G:I

    .line 1025
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 1110
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 1111
    iget-object v1, p0, Lcom/google/n/a/a/a/a/b;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1112
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/n/a/a/a/a/b;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1115
    :cond_0
    iget-object v1, p0, Lcom/google/n/a/a/a/a/b;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1116
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/n/a/a/a/a/b;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1119
    :cond_1
    iget-object v1, p0, Lcom/google/n/a/a/a/a/b;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1120
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/n/a/a/a/a/b;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1123
    :cond_2
    iget-object v1, p0, Lcom/google/n/a/a/a/a/b;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1124
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/n/a/a/a/a/b;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1127
    :cond_3
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 994
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/b;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/b;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/b;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/b;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x2a -> :sswitch_4
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/google/n/a/a/a/a/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1094
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/n/a/a/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1096
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1097
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/n/a/a/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1099
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/a/a/a/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1100
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/n/a/a/a/a/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1102
    :cond_2
    iget-object v0, p0, Lcom/google/n/a/a/a/a/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1103
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/n/a/a/a/a/b;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1105
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 1106
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1038
    if-ne p1, p0, :cond_1

    .line 1073
    :cond_0
    :goto_0
    return v0

    .line 1041
    :cond_1
    instance-of v2, p1, Lcom/google/n/a/a/a/a/b;

    if-nez v2, :cond_2

    move v0, v1

    .line 1042
    goto :goto_0

    .line 1044
    :cond_2
    check-cast p1, Lcom/google/n/a/a/a/a/b;

    .line 1045
    iget-object v2, p0, Lcom/google/n/a/a/a/a/b;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1046
    iget-object v2, p1, Lcom/google/n/a/a/a/a/b;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 1047
    goto :goto_0

    .line 1049
    :cond_3
    iget-object v2, p0, Lcom/google/n/a/a/a/a/b;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 1050
    goto :goto_0

    .line 1052
    :cond_4
    iget-object v2, p0, Lcom/google/n/a/a/a/a/b;->b:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 1053
    iget-object v2, p1, Lcom/google/n/a/a/a/a/b;->b:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    .line 1054
    goto :goto_0

    .line 1056
    :cond_5
    iget-object v2, p0, Lcom/google/n/a/a/a/a/b;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 1057
    goto :goto_0

    .line 1059
    :cond_6
    iget-object v2, p0, Lcom/google/n/a/a/a/a/b;->c:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 1060
    iget-object v2, p1, Lcom/google/n/a/a/a/a/b;->c:Ljava/lang/String;

    if-eqz v2, :cond_8

    move v0, v1

    .line 1061
    goto :goto_0

    .line 1063
    :cond_7
    iget-object v2, p0, Lcom/google/n/a/a/a/a/b;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 1064
    goto :goto_0

    .line 1066
    :cond_8
    iget-object v2, p0, Lcom/google/n/a/a/a/a/b;->d:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 1067
    iget-object v2, p1, Lcom/google/n/a/a/a/a/b;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 1068
    goto :goto_0

    .line 1070
    :cond_9
    iget-object v2, p0, Lcom/google/n/a/a/a/a/b;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1071
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1078
    iget-object v0, p0, Lcom/google/n/a/a/a/a/b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 1081
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/a/a/a/b;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 1083
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/a/a/a/b;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 1085
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/n/a/a/a/a/b;->d:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    .line 1087
    return v0

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 1081
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/a/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 1083
    :cond_2
    iget-object v0, p0, Lcom/google/n/a/a/a/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 1085
    :cond_3
    iget-object v1, p0, Lcom/google/n/a/a/a/a/b;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3
.end method
