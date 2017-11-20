.class final Lcom/google/android/location/os/aa;
.super Lcom/google/android/location/os/af;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/f/g;

.field final synthetic b:Lcom/google/android/location/os/e;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JLcom/google/android/location/f/g;)V
    .locals 1

    .prologue
    .line 277
    iput-object p1, p0, Lcom/google/android/location/os/aa;->b:Lcom/google/android/location/os/e;

    iput-object p5, p0, Lcom/google/android/location/os/aa;->a:Lcom/google/android/location/f/g;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/location/os/af;-><init>(Lcom/google/android/location/os/c;J)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/PrintWriter;)V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/location/os/aa;->a:Lcom/google/android/location/f/g;

    invoke-static {p1, v0}, Lcom/google/android/location/f/g;->a(Ljava/io/PrintWriter;Lcom/google/android/location/f/g;)V

    .line 281
    return-void
.end method
