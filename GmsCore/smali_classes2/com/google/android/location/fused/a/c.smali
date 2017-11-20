.class public final Lcom/google/android/location/fused/a/c;
.super Lcom/google/android/location/fused/a/b;
.source "SourceFile"


# instance fields
.field final b:Lcom/google/android/location/fused/service/a;

.field final c:Lcom/google/android/gms/common/util/i;

.field d:I

.field e:J

.field private final l:I

.field private final m:Landroid/content/BroadcastReceiver;

.field private final n:Landroid/app/PendingIntent;

.field private final o:Landroid/content/Context;

.field private final p:Lcom/google/android/location/o/c;

.field private final q:Landroid/os/Handler;

.field private r:D

.field private s:Z

.field private t:Z

.field private u:J

.field private v:Z

.field private w:Z


# direct methods
.method public constructor <init>(Lcom/google/android/location/fused/service/a;ILandroid/content/Context;Lcom/google/android/location/o/c;Lcom/google/android/gms/common/util/i;Landroid/os/Looper;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Lcom/google/android/location/fused/a/b;-><init>()V

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/fused/a/c;->r:D

    .line 43
    iput-boolean v2, p0, Lcom/google/android/location/fused/a/c;->s:Z

    .line 44
    iput-boolean v2, p0, Lcom/google/android/location/fused/a/c;->t:Z

    .line 46
    iput v2, p0, Lcom/google/android/location/fused/a/c;->d:I

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/fused/a/c;->u:J

    .line 50
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/fused/a/c;->e:J

    .line 52
    iput-boolean v2, p0, Lcom/google/android/location/fused/a/c;->v:Z

    .line 54
    iput-boolean v2, p0, Lcom/google/android/location/fused/a/c;->w:Z

    .line 63
    iput-object p1, p0, Lcom/google/android/location/fused/a/c;->b:Lcom/google/android/location/fused/service/a;

    .line 64
    iput p2, p0, Lcom/google/android/location/fused/a/c;->l:I

    .line 65
    iput-object p3, p0, Lcom/google/android/location/fused/a/c;->o:Landroid/content/Context;

    .line 66
    iput-object p4, p0, Lcom/google/android/location/fused/a/c;->p:Lcom/google/android/location/o/c;

    .line 67
    iput-object p5, p0, Lcom/google/android/location/fused/a/c;->c:Lcom/google/android/gms/common/util/i;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/location/fused/a/c;->q:Landroid/os/Handler;

    .line 71
    new-instance v0, Lcom/google/android/location/fused/a/d;

    invoke-direct {v0, p0}, Lcom/google/android/location/fused/a/d;-><init>(Lcom/google/android/location/fused/a/c;)V

    iput-object v0, p0, Lcom/google/android/location/fused/a/c;->m:Landroid/content/BroadcastReceiver;

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.flp.HAL_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x8000000

    invoke-static {p3, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/fused/a/c;->n:Landroid/app/PendingIntent;

    .line 86
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 14

    .prologue
    const-wide/16 v2, 0x3e8

    const/4 v8, 0x1

    const/4 v4, 0x0

    const-wide v12, 0x7fffffffffffffffL

    .line 90
    iput v4, p0, Lcom/google/android/location/fused/a/c;->d:I

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/fused/a/c;->u:J

    .line 92
    iget-boolean v0, p0, Lcom/google/android/location/fused/a/l;->h:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/location/fused/a/l;->i:Z

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/google/android/location/fused/a/h;->f:J

    cmp-long v0, v0, v12

    if-gez v0, :cond_6

    .line 93
    const/4 v0, 0x4

    .line 94
    iget-boolean v1, p0, Lcom/google/android/location/fused/a/c;->s:Z

    if-eqz v1, :cond_0

    .line 95
    const/4 v0, 0x5

    .line 97
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/location/fused/a/c;->t:Z

    if-eqz v1, :cond_7

    .line 98
    or-int/lit8 v6, v0, 0xa

    .line 101
    :goto_0
    iget-wide v4, p0, Lcom/google/android/location/fused/a/h;->f:J

    .line 102
    iget-wide v10, p0, Lcom/google/android/location/fused/a/b;->a:J

    .line 103
    const/4 v7, 0x2

    .line 104
    cmp-long v0, v4, v12

    if-gez v0, :cond_1

    const-wide/16 v0, 0x2

    mul-long/2addr v0, v4

    cmp-long v0, v10, v0

    if-ltz v0, :cond_1

    .line 107
    cmp-long v0, v4, v2

    if-gez v0, :cond_3

    move-wide v0, v2

    .line 108
    :goto_1
    div-long v0, v10, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/location/fused/a/c;->d:I

    .line 109
    const-wide/16 v0, 0x7d0

    add-long/2addr v0, v10

    iput-wide v0, p0, Lcom/google/android/location/fused/a/c;->u:J

    move v7, v8

    .line 112
    :cond_1
    cmp-long v0, v4, v12

    if-gez v0, :cond_4

    const-wide/32 v0, 0xf4240

    mul-long v2, v4, v0

    .line 115
    :goto_2
    iget-boolean v0, p0, Lcom/google/android/location/fused/a/c;->w:Z

    if-nez v0, :cond_5

    .line 116
    iget-object v0, p0, Lcom/google/android/location/fused/a/c;->b:Lcom/google/android/location/fused/service/a;

    iget v1, p0, Lcom/google/android/location/fused/a/c;->l:I

    iget-wide v4, p0, Lcom/google/android/location/fused/a/c;->r:D

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/location/fused/service/a;->a(IJDII)V

    .line 122
    iput-boolean v8, p0, Lcom/google/android/location/fused/a/c;->w:Z

    .line 136
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/location/fused/a/c;->d()V

    .line 137
    return-void

    :cond_3
    move-wide v0, v4

    .line 107
    goto :goto_1

    :cond_4
    move-wide v2, v4

    .line 112
    goto :goto_2

    .line 124
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/fused/a/c;->b:Lcom/google/android/location/fused/service/a;

    iget v1, p0, Lcom/google/android/location/fused/a/c;->l:I

    iget-wide v4, p0, Lcom/google/android/location/fused/a/c;->r:D

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/location/fused/service/a;->b(IJDII)V

    goto :goto_3

    .line 131
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/location/fused/a/c;->w:Z

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/google/android/location/fused/a/c;->b:Lcom/google/android/location/fused/service/a;

    iget v1, p0, Lcom/google/android/location/fused/a/c;->l:I

    invoke-virtual {v0, v1}, Lcom/google/android/location/fused/service/a;->a(I)V

    .line 133
    iput-boolean v4, p0, Lcom/google/android/location/fused/a/c;->w:Z

    goto :goto_3

    :cond_7
    move v6, v0

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    const-wide v2, 0x40c3878000000000L    # 9999.0

    .line 143
    iget-wide v0, p0, Lcom/google/android/location/fused/a/c;->r:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 144
    iput-wide v2, p0, Lcom/google/android/location/fused/a/c;->r:D

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/fused/a/l;->k:Z

    .line 147
    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/google/android/location/fused/a/c;->t:Z

    if-eq v0, p1, :cond_0

    .line 164
    iput-boolean p1, p0, Lcom/google/android/location/fused/a/c;->t:Z

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/fused/a/l;->k:Z

    .line 167
    :cond_0
    return-void
.end method

.method public final b_(Z)V
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/google/android/location/fused/a/c;->s:Z

    if-eq v0, p1, :cond_0

    .line 154
    iput-boolean p1, p0, Lcom/google/android/location/fused/a/c;->s:Z

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/fused/a/l;->k:Z

    .line 157
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/location/fused/a/c;->c:Lcom/google/android/gms/common/util/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/fused/a/c;->e:J

    .line 174
    invoke-virtual {p0}, Lcom/google/android/location/fused/a/c;->d()V

    .line 175
    return-void
.end method

.method final d()V
    .locals 6

    .prologue
    .line 179
    iget v0, p0, Lcom/google/android/location/fused/a/c;->d:I

    if-nez v0, :cond_1

    .line 180
    iget-boolean v0, p0, Lcom/google/android/location/fused/a/c;->v:Z

    if-eqz v0, :cond_0

    .line 181
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/fused/a/c;->e:J

    .line 182
    iget-object v0, p0, Lcom/google/android/location/fused/a/c;->p:Lcom/google/android/location/o/c;

    iget-object v1, p0, Lcom/google/android/location/fused/a/c;->n:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Lcom/google/android/location/o/c;->a(Landroid/app/PendingIntent;)V

    .line 183
    iget-object v0, p0, Lcom/google/android/location/fused/a/c;->o:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/location/fused/a/c;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/fused/a/c;->v:Z

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/location/fused/a/c;->v:Z

    if-nez v0, :cond_2

    .line 188
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.gms.flp.HAL_ALARM"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/google/android/location/fused/a/c;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/location/fused/a/c;->m:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/location/fused/a/c;->q:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/fused/a/c;->v:Z

    .line 197
    :cond_2
    iget-wide v0, p0, Lcom/google/android/location/fused/a/c;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/location/fused/a/c;->c:Lcom/google/android/gms/common/util/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v0

    .line 199
    :goto_1
    iget-object v2, p0, Lcom/google/android/location/fused/a/c;->p:Lcom/google/android/location/o/c;

    iget-wide v4, p0, Lcom/google/android/location/fused/a/c;->u:J

    add-long/2addr v0, v4

    iget-object v3, p0, Lcom/google/android/location/fused/a/l;->j:Ljava/util/Collection;

    iget-object v3, p0, Lcom/google/android/location/fused/a/c;->n:Landroid/app/PendingIntent;

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/location/o/c;->a(JLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 197
    :cond_3
    iget-wide v0, p0, Lcom/google/android/location/fused/a/c;->e:J

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Hardware FLP [clientId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/location/fused/a/c;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 210
    const-string v1, ", maxPower[mW]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/location/fused/a/c;->r:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, ", connectedToHal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/fused/a/c;->b:Lcom/google/android/location/fused/service/a;

    invoke-virtual {v2}, Lcom/google/android/location/fused/service/a;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {p0, v0}, Lcom/google/android/location/fused/a/c;->a(Ljava/lang/StringBuilder;)V

    .line 213
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
