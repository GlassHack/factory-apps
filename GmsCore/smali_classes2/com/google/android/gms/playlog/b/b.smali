.class public final Lcom/google/android/gms/playlog/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Z


# instance fields
.field public a:Lcom/google/android/gms/playlog/b/h;

.field public b:[[B

.field private final d:Lcom/google/android/gms/playlog/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/android/gms/playlog/a/b;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/playlog/b/b;->c:Z

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/playlog/b/h;[[BLcom/google/android/gms/playlog/b/d;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/b/h;

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/b;->a:Lcom/google/android/gms/playlog/b/h;

    .line 28
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/b;->b:[[B

    .line 29
    invoke-static {p3}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/b/d;

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/b;->d:Lcom/google/android/gms/playlog/b/d;

    .line 30
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/b;->d:Lcom/google/android/gms/playlog/b/d;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/b/d;->a()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 39
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/b;->b:[[B

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 40
    const-string v1, "LogEventSet"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not delete all rows: numDeleted="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " != numRows="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/playlog/b/b;->b:[[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not delete logs: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
