.class public final Lcom/google/android/gms/auth/e/h;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:I

.field private e:Z

.field private f:I

.field private g:Z

.field private h:J

.field private i:Z

.field private j:I

.field private k:Z

.field private l:J

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 1041
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 1069
    iput v0, p0, Lcom/google/android/gms/auth/e/h;->b:I

    .line 1086
    iput v0, p0, Lcom/google/android/gms/auth/e/h;->d:I

    .line 1103
    iput v0, p0, Lcom/google/android/gms/auth/e/h;->f:I

    .line 1120
    iput-wide v2, p0, Lcom/google/android/gms/auth/e/h;->h:J

    .line 1137
    iput v0, p0, Lcom/google/android/gms/auth/e/h;->j:I

    .line 1154
    iput-wide v2, p0, Lcom/google/android/gms/auth/e/h;->l:J

    .line 1171
    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/h;->n:Z

    .line 1188
    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/h;->p:Z

    .line 1205
    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/h;->r:Z

    .line 1269
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/auth/e/h;->s:I

    .line 1041
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1272
    iget v0, p0, Lcom/google/android/gms/auth/e/h;->s:I

    if-gez v0, :cond_0

    .line 1274
    invoke-virtual {p0}, Lcom/google/android/gms/auth/e/h;->b()I

    .line 1276
    :cond_0
    iget v0, p0, Lcom/google/android/gms/auth/e/h;->s:I

    return v0
.end method

.method public final a(I)Lcom/google/android/gms/auth/e/h;
    .locals 1

    .prologue
    .line 1073
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/h;->a:Z

    .line 1074
    iput p1, p0, Lcom/google/android/gms/auth/e/h;->b:I

    .line 1075
    return-object p0
.end method

.method public final a(J)Lcom/google/android/gms/auth/e/h;
    .locals 1

    .prologue
    .line 1124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/h;->g:Z

    .line 1125
    iput-wide p1, p0, Lcom/google/android/gms/auth/e/h;->h:J

    .line 1126
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/gms/auth/e/h;
    .locals 1

    .prologue
    .line 1175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/h;->m:Z

    .line 1176
    iput-boolean p1, p0, Lcom/google/android/gms/auth/e/h;->n:Z

    .line 1177
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    .line 1038
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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/h;->a(I)Lcom/google/android/gms/auth/e/h;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/h;->b(I)Lcom/google/android/gms/auth/e/h;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/h;->c(I)Lcom/google/android/gms/auth/e/h;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/e/h;->a(J)Lcom/google/android/gms/auth/e/h;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/h;->d(I)Lcom/google/android/gms/auth/e/h;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/e/h;->b(J)Lcom/google/android/gms/auth/e/h;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/h;->a(Z)Lcom/google/android/gms/auth/e/h;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/h;->b(Z)Lcom/google/android/gms/auth/e/h;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/h;->c(Z)Lcom/google/android/gms/auth/e/h;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x28 -> :sswitch_4
        0x30 -> :sswitch_5
        0x38 -> :sswitch_6
        0x40 -> :sswitch_7
        0x48 -> :sswitch_8
        0x50 -> :sswitch_9
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 1240
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/h;->a:Z

    if-eqz v0, :cond_0

    .line 1241
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/auth/e/h;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 1243
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/h;->c:Z

    if-eqz v0, :cond_1

    .line 1244
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/auth/e/h;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 1246
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/h;->e:Z

    if-eqz v0, :cond_2

    .line 1247
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/gms/auth/e/h;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 1249
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/h;->g:Z

    if-eqz v0, :cond_3

    .line 1250
    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/auth/e/h;->h:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 1252
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/h;->i:Z

    if-eqz v0, :cond_4

    .line 1253
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/gms/auth/e/h;->j:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 1255
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/h;->k:Z

    if-eqz v0, :cond_5

    .line 1256
    const/4 v0, 0x7

    iget-wide v2, p0, Lcom/google/android/gms/auth/e/h;->l:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 1258
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/h;->m:Z

    if-eqz v0, :cond_6

    .line 1259
    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/h;->n:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 1261
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/h;->o:Z

    if-eqz v0, :cond_7

    .line 1262
    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/h;->p:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 1264
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/h;->q:Z

    if-eqz v0, :cond_8

    .line 1265
    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/h;->r:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 1267
    :cond_8
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 1281
    const/4 v0, 0x0

    .line 1282
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/h;->a:Z

    if-eqz v1, :cond_0

    .line 1283
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/auth/e/h;->b:I

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1286
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/h;->c:Z

    if-eqz v1, :cond_1

    .line 1287
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/auth/e/h;->d:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1290
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/h;->e:Z

    if-eqz v1, :cond_2

    .line 1291
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/auth/e/h;->f:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1294
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/h;->g:Z

    if-eqz v1, :cond_3

    .line 1295
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/auth/e/h;->h:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1298
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/h;->i:Z

    if-eqz v1, :cond_4

    .line 1299
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/auth/e/h;->j:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1302
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/h;->k:Z

    if-eqz v1, :cond_5

    .line 1303
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/android/gms/auth/e/h;->l:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1306
    :cond_5
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/h;->m:Z

    if-eqz v1, :cond_6

    .line 1307
    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/android/gms/auth/e/h;->n:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 1310
    :cond_6
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/h;->o:Z

    if-eqz v1, :cond_7

    .line 1311
    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/android/gms/auth/e/h;->p:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 1314
    :cond_7
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/h;->q:Z

    if-eqz v1, :cond_8

    .line 1315
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/android/gms/auth/e/h;->r:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 1318
    :cond_8
    iput v0, p0, Lcom/google/android/gms/auth/e/h;->s:I

    .line 1319
    return v0
.end method

.method public final b(I)Lcom/google/android/gms/auth/e/h;
    .locals 1

    .prologue
    .line 1090
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/h;->c:Z

    .line 1091
    iput p1, p0, Lcom/google/android/gms/auth/e/h;->d:I

    .line 1092
    return-object p0
.end method

.method public final b(J)Lcom/google/android/gms/auth/e/h;
    .locals 1

    .prologue
    .line 1158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/h;->k:Z

    .line 1159
    iput-wide p1, p0, Lcom/google/android/gms/auth/e/h;->l:J

    .line 1160
    return-object p0
.end method

.method public final b(Z)Lcom/google/android/gms/auth/e/h;
    .locals 1

    .prologue
    .line 1192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/h;->o:Z

    .line 1193
    iput-boolean p1, p0, Lcom/google/android/gms/auth/e/h;->p:Z

    .line 1194
    return-object p0
.end method

.method public final c(I)Lcom/google/android/gms/auth/e/h;
    .locals 1

    .prologue
    .line 1107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/h;->e:Z

    .line 1108
    iput p1, p0, Lcom/google/android/gms/auth/e/h;->f:I

    .line 1109
    return-object p0
.end method

.method public final c(Z)Lcom/google/android/gms/auth/e/h;
    .locals 1

    .prologue
    .line 1209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/h;->q:Z

    .line 1210
    iput-boolean p1, p0, Lcom/google/android/gms/auth/e/h;->r:Z

    .line 1211
    return-object p0
.end method

.method public final d(I)Lcom/google/android/gms/auth/e/h;
    .locals 1

    .prologue
    .line 1141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/h;->i:Z

    .line 1142
    iput p1, p0, Lcom/google/android/gms/auth/e/h;->j:I

    .line 1143
    return-object p0
.end method
