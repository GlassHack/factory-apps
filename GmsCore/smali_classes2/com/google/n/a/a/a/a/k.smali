.class public final Lcom/google/n/a/a/a/a/k;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Long;

.field public c:Lcom/google/n/a/a/a/a/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1089
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 1090
    iput-object v0, p0, Lcom/google/n/a/a/a/a/k;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/k;->b:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/n/a/a/a/a/k;->c:Lcom/google/n/a/a/a/a/n;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/n/a/a/a/a/k;->G:I

    .line 1091
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 4

    .prologue
    .line 1163
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 1164
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/n/a/a/a/a/k;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1166
    iget-object v1, p0, Lcom/google/n/a/a/a/a/k;->b:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 1167
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/n/a/a/a/a/k;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1170
    :cond_0
    iget-object v1, p0, Lcom/google/n/a/a/a/a/k;->c:Lcom/google/n/a/a/a/a/n;

    if-eqz v1, :cond_1

    .line 1171
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/n/a/a/a/a/k;->c:Lcom/google/n/a/a/a/a/n;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1174
    :cond_1
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 2

    .prologue
    .line 1063
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

    iput-object v0, p0, Lcom/google/n/a/a/a/a/k;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/a/a/a/k;->b:Ljava/lang/Long;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/n/a/a/a/a/k;->c:Lcom/google/n/a/a/a/a/n;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/n/a/a/a/a/n;

    invoke-direct {v0}, Lcom/google/n/a/a/a/a/n;-><init>()V

    iput-object v0, p0, Lcom/google/n/a/a/a/a/k;->c:Lcom/google/n/a/a/a/a/n;

    :cond_1
    iget-object v0, p0, Lcom/google/n/a/a/a/a/k;->c:Lcom/google/n/a/a/a/a/n;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    .line 1151
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/n/a/a/a/a/k;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1152
    iget-object v0, p0, Lcom/google/n/a/a/a/a/k;->b:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 1153
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/n/a/a/a/a/k;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 1155
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/k;->c:Lcom/google/n/a/a/a/a/n;

    if-eqz v0, :cond_1

    .line 1156
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/n/a/a/a/a/k;->c:Lcom/google/n/a/a/a/a/n;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 1158
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 1159
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1103
    if-ne p1, p0, :cond_1

    .line 1133
    :cond_0
    :goto_0
    return v0

    .line 1106
    :cond_1
    instance-of v2, p1, Lcom/google/n/a/a/a/a/k;

    if-nez v2, :cond_2

    move v0, v1

    .line 1107
    goto :goto_0

    .line 1109
    :cond_2
    check-cast p1, Lcom/google/n/a/a/a/a/k;

    .line 1110
    iget-object v2, p0, Lcom/google/n/a/a/a/a/k;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1111
    iget-object v2, p1, Lcom/google/n/a/a/a/a/k;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 1112
    goto :goto_0

    .line 1114
    :cond_3
    iget-object v2, p0, Lcom/google/n/a/a/a/a/k;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/k;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 1115
    goto :goto_0

    .line 1117
    :cond_4
    iget-object v2, p0, Lcom/google/n/a/a/a/a/k;->b:Ljava/lang/Long;

    if-nez v2, :cond_5

    .line 1118
    iget-object v2, p1, Lcom/google/n/a/a/a/a/k;->b:Ljava/lang/Long;

    if-eqz v2, :cond_6

    move v0, v1

    .line 1119
    goto :goto_0

    .line 1121
    :cond_5
    iget-object v2, p0, Lcom/google/n/a/a/a/a/k;->b:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/k;->b:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 1122
    goto :goto_0

    .line 1124
    :cond_6
    iget-object v2, p0, Lcom/google/n/a/a/a/a/k;->c:Lcom/google/n/a/a/a/a/n;

    if-nez v2, :cond_7

    .line 1125
    iget-object v2, p1, Lcom/google/n/a/a/a/a/k;->c:Lcom/google/n/a/a/a/a/n;

    if-eqz v2, :cond_0

    move v0, v1

    .line 1126
    goto :goto_0

    .line 1129
    :cond_7
    iget-object v2, p0, Lcom/google/n/a/a/a/a/k;->c:Lcom/google/n/a/a/a/a/n;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/k;->c:Lcom/google/n/a/a/a/a/n;

    invoke-virtual {v2, v3}, Lcom/google/n/a/a/a/a/n;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1130
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1138
    iget-object v0, p0, Lcom/google/n/a/a/a/a/k;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 1141
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/a/a/a/k;->b:Ljava/lang/Long;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 1143
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/n/a/a/a/a/k;->c:Lcom/google/n/a/a/a/a/n;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 1145
    return v0

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/a/a/a/k;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 1141
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/a/a/a/k;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_1

    .line 1143
    :cond_2
    iget-object v1, p0, Lcom/google/n/a/a/a/a/k;->c:Lcom/google/n/a/a/a/a/n;

    invoke-virtual {v1}, Lcom/google/n/a/a/a/a/n;->hashCode()I

    move-result v1

    goto :goto_2
.end method
