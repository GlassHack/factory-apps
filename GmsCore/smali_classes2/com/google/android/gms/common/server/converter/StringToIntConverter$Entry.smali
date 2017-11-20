.class public final Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/server/converter/c;


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/google/android/gms/common/server/converter/c;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/converter/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;->CREATOR:Lcom/google/android/gms/common/server/converter/c;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p1, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;->a:I

    .line 143
    iput-object p2, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;->b:Ljava/lang/String;

    .line 144
    iput p3, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;->c:I

    .line 145
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;->a:I

    .line 149
    iput-object p1, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;->b:Ljava/lang/String;

    .line 150
    iput p2, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;->c:I

    .line 151
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;->CREATOR:Lcom/google/android/gms/common/server/converter/c;

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;->CREATOR:Lcom/google/android/gms/common/server/converter/c;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/server/converter/c;->a(Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;Landroid/os/Parcel;)V

    .line 161
    return-void
.end method
