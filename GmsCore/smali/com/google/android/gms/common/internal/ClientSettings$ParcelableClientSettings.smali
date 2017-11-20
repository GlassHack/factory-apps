.class public final Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/internal/ai;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/List;

.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/google/android/gms/common/internal/ai;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/ai;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->CREATOR:Lcom/google/android/gms/common/internal/ai;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->c:Ljava/util/List;

    .line 140
    iput p1, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->a:I

    .line 141
    iput-object p2, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->b:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->c:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    iput p4, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->d:I

    .line 144
    iput-object p5, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->e:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 155
    const/4 v1, 0x3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, p0

    move-object v2, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;-><init>(ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    .line 160
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->d:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 2

    .prologue
    .line 196
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->a:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 206
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/ai;->a(Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;Landroid/os/Parcel;)V

    .line 207
    return-void
.end method
