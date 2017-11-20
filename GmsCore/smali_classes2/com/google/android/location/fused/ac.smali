.class public final Lcom/google/android/location/fused/ac;
.super Lcom/google/android/location/o/k;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Received Gps Location"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Received Wifi Location"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Received Cell Location"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Received Fused Location"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Received Unknown Location"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Gps Started 0 <= interval < 1min"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Gps Started 1min <= interval < 5min"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Gps Started interval >= 5min"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Gps Stopped"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Nlp Started 0 <= interval < 1min"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Nlp Started 1min <= interval < 5min"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Nlp Started interval >= 5min"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Nlp Stopped"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Low Power Nlp Started 0 <= interval < 1min"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Low Power Nlp Started 1min <= interval < 5min"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Low Power Nlp Started interval >= 5min"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Low Power Nlp Stopped"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Network Location Setting Enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Network Location Setting Disabled"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Gps Setting Enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Gps Setting Disabled"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "State Changed To Default"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "State Changed To Wifi"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "State Changed To Gps"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "State Changed To Gps In Vehicle"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "State Changed To Maybe Leaving Gps"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/location/fused/ac;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/google/android/location/o/k;-><init>(I)V

    .line 70
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/location/fused/ac;->b:I

    .line 74
    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lcom/google/android/location/fused/ac;->b(I)B

    move-result v0

    .line 229
    if-ltz v0, :cond_0

    sget-object v1, Lcom/google/android/location/fused/ac;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 230
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/location/fused/ac;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/location/fused/ac;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/location/fused/ac;->a:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()V
    .locals 4

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/location/fused/ac;->a(BJ)V

    .line 81
    return-void
.end method

.method public final a(J)V
    .locals 5

    .prologue
    .line 115
    const/4 v0, 0x7

    .line 116
    const-wide/32 v2, 0xea60

    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    .line 117
    const/4 v0, 0x5

    .line 121
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/location/fused/ac;->a(BJ)V

    .line 122
    return-void

    .line 118
    :cond_1
    const-wide/32 v2, 0x493e0

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 119
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    .line 177
    if-eqz p1, :cond_0

    const/16 v0, 0x11

    .line 180
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/location/fused/ac;->a(BJ)V

    .line 181
    return-void

    .line 177
    :cond_0
    const/16 v0, 0x12

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 87
    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/location/fused/ac;->a(BJ)V

    .line 88
    return-void
.end method

.method public final b(J)V
    .locals 5

    .prologue
    .line 136
    const/16 v0, 0xb

    .line 137
    const-wide/32 v2, 0xea60

    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    .line 138
    const/16 v0, 0x9

    .line 142
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/location/fused/ac;->a(BJ)V

    .line 143
    return-void

    .line 139
    :cond_1
    const-wide/32 v2, 0x493e0

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 140
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 4

    .prologue
    .line 187
    if-eqz p1, :cond_0

    const/16 v0, 0x13

    .line 190
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/location/fused/ac;->a(BJ)V

    .line 191
    return-void

    .line 187
    :cond_0
    const/16 v0, 0x14

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 94
    const/4 v0, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/location/fused/ac;->a(BJ)V

    .line 95
    return-void
.end method

.method public final c(J)V
    .locals 5

    .prologue
    .line 157
    const/16 v0, 0xf

    .line 158
    const-wide/32 v2, 0xea60

    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    .line 159
    const/16 v0, 0xd

    .line 163
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/location/fused/ac;->a(BJ)V

    .line 164
    return-void

    .line 160
    :cond_1
    const-wide/32 v2, 0x493e0

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 161
    const/16 v0, 0xe

    goto :goto_0
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 108
    const/4 v0, 0x4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/location/fused/ac;->a(BJ)V

    .line 109
    return-void
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 128
    const/16 v0, 0x8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/location/fused/ac;->a(BJ)V

    .line 129
    return-void
.end method

.method public final f()V
    .locals 4

    .prologue
    .line 149
    const/16 v0, 0xc

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/location/fused/ac;->a(BJ)V

    .line 150
    return-void
.end method

.method public final g()V
    .locals 4

    .prologue
    .line 170
    const/16 v0, 0x10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/location/fused/ac;->a(BJ)V

    .line 171
    return-void
.end method
