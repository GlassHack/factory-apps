.class final Lcom/google/android/gms/analytics/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/analytics/o;


# instance fields
.field private final a:Lcom/google/android/gms/analytics/ao;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/google/android/gms/analytics/ao;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/ao;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/an;->a:Lcom/google/android/gms/analytics/ao;

    .line 44
    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/google/android/gms/analytics/m;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/analytics/an;->a:Lcom/google/android/gms/analytics/ao;

    return-object v0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 76
    const-string v0, "ga_dispatchPeriod"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/analytics/an;->a:Lcom/google/android/gms/analytics/ao;

    iput p2, v0, Lcom/google/android/gms/analytics/ao;->d:I

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "int configuration name not recognized:  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 54
    const-string v0, "ga_appName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/analytics/an;->a:Lcom/google/android/gms/analytics/ao;

    iput-object p2, v0, Lcom/google/android/gms/analytics/ao;->a:Ljava/lang/String;

    .line 63
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string v0, "ga_appVersion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/analytics/an;->a:Lcom/google/android/gms/analytics/ao;

    iput-object p2, v0, Lcom/google/android/gms/analytics/ao;->b:Ljava/lang/String;

    goto :goto_0

    .line 58
    :cond_1
    const-string v0, "ga_logLevel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/analytics/an;->a:Lcom/google/android/gms/analytics/ao;

    iput-object p2, v0, Lcom/google/android/gms/analytics/ao;->c:Ljava/lang/String;

    goto :goto_0

    .line 61
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "string configuration name not recognized:  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 67
    const-string v0, "ga_dryRun"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v1, p0, Lcom/google/android/gms/analytics/an;->a:Lcom/google/android/gms/analytics/ao;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/google/android/gms/analytics/ao;->e:I

    .line 72
    :goto_1
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bool configuration name not recognized:  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    goto :goto_1
.end method
