.class final Lcom/google/android/location/os/q;
.super Lcom/google/android/location/os/af;
.source "SourceFile"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/location/os/e;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JZ)V
    .locals 1

    .prologue
    .line 245
    iput-object p1, p0, Lcom/google/android/location/os/q;->b:Lcom/google/android/location/os/e;

    iput-boolean p5, p0, Lcom/google/android/location/os/q;->a:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/location/os/af;-><init>(Lcom/google/android/location/os/c;J)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/PrintWriter;)V
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/google/android/location/os/q;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "enabled"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 249
    return-void

    .line 248
    :cond_0
    const-string v0, "disabled"

    goto :goto_0
.end method
