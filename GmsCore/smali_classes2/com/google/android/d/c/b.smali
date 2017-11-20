.class public final Lcom/google/android/d/c/b;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/d/c/h;


# direct methods
.method constructor <init>(Lcom/google/android/d/c/h;)V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Blocked by rule: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/android/d/c/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lcom/google/android/d/c/b;->a:Lcom/google/android/d/c/h;

    .line 83
    return-void
.end method
