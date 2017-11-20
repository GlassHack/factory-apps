.class public final Lcom/google/android/location/os/ac;
.super Lcom/google/android/location/os/af;
.source "SourceFile"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/location/os/e;


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JZ)V
    .locals 1

    .prologue
    .line 295
    iput-object p1, p0, Lcom/google/android/location/os/ac;->b:Lcom/google/android/location/os/e;

    iput-boolean p5, p0, Lcom/google/android/location/os/ac;->a:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/location/os/af;-><init>(Lcom/google/android/location/os/c;J)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/PrintWriter;)V
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/google/android/location/os/ac;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "enabled"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 299
    return-void

    .line 298
    :cond_0
    const-string v0, "disabled"

    goto :goto_0
.end method
