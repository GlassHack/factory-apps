.class final enum Lcom/google/android/location/reporting/p;
.super Lcom/google/android/location/reporting/m;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 302
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/location/reporting/m;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 305
    sget-object v0, Lcom/google/android/location/reporting/service/y;->x:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 310
    sget-object v0, Lcom/google/android/location/reporting/service/y;->y:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    const-string v0, "Phone default"

    return-object v0
.end method
