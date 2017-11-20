.class final Lcom/google/android/location/reporting/config/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Integer;

.field final b:Ljava/lang/Integer;

.field final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/location/reporting/config/AccountConfig;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/google/android/location/reporting/config/AccountConfig;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/config/o;->a:Ljava/lang/Integer;

    .line 79
    invoke-virtual {p1}, Lcom/google/android/location/reporting/config/AccountConfig;->r()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/config/o;->b:Ljava/lang/Integer;

    .line 80
    invoke-virtual {p1}, Lcom/google/android/location/reporting/config/AccountConfig;->u()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/config/o;->c:Ljava/util/List;

    .line 86
    :goto_0
    return-void

    .line 82
    :cond_0
    iput-object v0, p0, Lcom/google/android/location/reporting/config/o;->a:Ljava/lang/Integer;

    .line 83
    iput-object v0, p0, Lcom/google/android/location/reporting/config/o;->b:Ljava/lang/Integer;

    .line 84
    iput-object v0, p0, Lcom/google/android/location/reporting/config/o;->c:Ljava/util/List;

    goto :goto_0
.end method

.method static a(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/location/reporting/config/o;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 129
    const-string v0, "null"

    .line 136
    :goto_0
    return-object v0

    .line 132
    :cond_0
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 133
    iget-object v0, p0, Lcom/google/android/location/reporting/config/o;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/reporting/InactiveReason;

    .line 134
    invoke-virtual {v0}, Lcom/google/android/gms/location/reporting/InactiveReason;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 136
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 90
    instance-of v1, p1, Lcom/google/android/location/reporting/config/o;

    if-nez v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    check-cast p1, Lcom/google/android/location/reporting/config/o;

    .line 95
    iget-object v1, p0, Lcom/google/android/location/reporting/config/o;->a:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/reporting/config/o;->a:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/reporting/config/o;->b:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/reporting/config/o;->b:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/reporting/config/o;->c:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/location/reporting/config/o;->c:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 102
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/location/reporting/config/o;->a:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/reporting/config/o;->b:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/reporting/config/o;->c:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
