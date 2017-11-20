.class public interface abstract Lcom/google/android/location/geofencer/data/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/Comparator;

.field public static final c:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/google/android/location/geofencer/data/c;

    invoke-direct {v0}, Lcom/google/android/location/geofencer/data/c;-><init>()V

    sput-object v0, Lcom/google/android/location/geofencer/data/b;->b:Ljava/util/Comparator;

    .line 27
    new-instance v0, Lcom/google/android/location/geofencer/data/d;

    invoke-direct {v0}, Lcom/google/android/location/geofencer/data/d;-><init>()V

    sput-object v0, Lcom/google/android/location/geofencer/data/b;->c:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Iterable;IJLandroid/location/Location;D)Lcom/google/android/location/geofencer/data/e;
.end method

.method public abstract a(Ljava/lang/Iterable;DI)Ljava/util/List;
.end method

.method public abstract a(Ljava/io/PrintWriter;)V
.end method

.method public abstract a(Ljava/lang/Iterable;I)V
.end method

.method public abstract b(Ljava/lang/Iterable;I)Ljava/util/List;
.end method

.method public abstract c(Ljava/lang/Iterable;I)Ljava/util/List;
.end method
