.class final Lcom/google/android/location/b/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/f/aj;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 503
    sget-object v0, Lcom/google/android/location/f/ak;->h:Lcom/google/android/location/f/aj;

    invoke-static {p1, v0}, Lcom/google/android/location/b/a;->a(Ljava/io/DataInput;Lcom/google/android/location/f/aj;)Lcom/google/android/location/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 1

    .prologue
    .line 503
    check-cast p1, Lcom/google/android/location/b/a;

    sget-object v0, Lcom/google/android/location/f/ak;->h:Lcom/google/android/location/f/aj;

    invoke-static {p1, p2, v0}, Lcom/google/android/location/b/a;->a(Lcom/google/android/location/b/a;Ljava/io/DataOutput;Lcom/google/android/location/f/aj;)V

    return-void
.end method
