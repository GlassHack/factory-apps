.class final Lcom/google/android/location/places/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/places/aa;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/h;

.field final synthetic b:Lcom/google/android/location/places/b;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/b;Lcom/google/android/location/places/h;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/google/android/location/places/c;->b:Lcom/google/android/location/places/b;

    iput-object p2, p0, Lcom/google/android/location/places/c;->a:Lcom/google/android/location/places/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/util/List;)V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/location/places/c;->a:Lcom/google/android/location/places/h;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/places/h;->a(ILjava/util/List;)V

    .line 254
    return-void
.end method
