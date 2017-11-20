.class final Lcom/google/android/location/os/i;
.super Lcom/google/android/location/os/af;
.source "SourceFile"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/location/os/e;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JZ)V
    .locals 1

    .prologue
    .line 342
    iput-object p1, p0, Lcom/google/android/location/os/i;->b:Lcom/google/android/location/os/e;

    iput-boolean p5, p0, Lcom/google/android/location/os/i;->a:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/location/os/af;-><init>(Lcom/google/android/location/os/c;J)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/PrintWriter;)V
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/google/android/location/os/i;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "enabled"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 346
    return-void

    .line 345
    :cond_0
    const-string v0, "disabled"

    goto :goto_0
.end method
