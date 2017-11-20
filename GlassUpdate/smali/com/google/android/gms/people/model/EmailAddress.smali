.class public interface abstract Lcom/google/android/gms/people/model/EmailAddress;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/model/ValueAndType;


# static fields
.field public static final EMPTY_EMAILS:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/people/model/EmailAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/et;

    invoke-direct {v0}, Lcom/google/android/gms/internal/et;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/model/EmailAddress;->EMPTY_EMAILS:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method
