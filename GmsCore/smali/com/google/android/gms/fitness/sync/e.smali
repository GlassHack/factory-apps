.class public Lcom/google/android/gms/fitness/sync/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/sync/d;


# static fields
.field private static final a:Lcom/google/android/gms/fitness/e/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 69
    new-instance v0, Lcom/google/android/gms/fitness/e/a;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/fitness/e/a;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/sync/e;->a:Lcom/google/android/gms/fitness/e/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/data/DataSource;Ljava/lang/String;)Lcom/google/android/gms/fitness/e/a;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/gms/fitness/sync/e;->a:Lcom/google/android/gms/fitness/e/a;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/fitness/e/a;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/android/gms/fitness/sync/e;->a:Lcom/google/android/gms/fitness/e/a;

    return-object v0
.end method

.method public final a()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)Ljava/util/Collection;
    .locals 0

    .prologue
    .line 25
    return-object p1
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataSource;JJ)Ljava/util/List;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/n/a/a/a/a/ae;)V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public final b(Lcom/google/n/a/a/a/a/ae;)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method
