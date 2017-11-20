.class final Lcom/google/android/location/os/t;
.super Lcom/google/android/location/os/af;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/location/ActivityRecognitionResult;

.field final synthetic b:Z

.field final synthetic c:Lcom/google/android/location/os/e;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JLcom/google/android/gms/location/ActivityRecognitionResult;Z)V
    .locals 1

    .prologue
    .line 443
    iput-object p1, p0, Lcom/google/android/location/os/t;->c:Lcom/google/android/location/os/e;

    iput-object p5, p0, Lcom/google/android/location/os/t;->a:Lcom/google/android/gms/location/ActivityRecognitionResult;

    iput-boolean p6, p0, Lcom/google/android/location/os/t;->b:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/location/os/af;-><init>(Lcom/google/android/location/os/c;J)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/PrintWriter;)V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/android/location/os/t;->a:Lcom/google/android/gms/location/ActivityRecognitionResult;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 447
    const-string v0, " sentToClient="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 448
    iget-boolean v0, p0, Lcom/google/android/location/os/t;->b:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 449
    return-void
.end method
