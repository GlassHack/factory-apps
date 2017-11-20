.class public Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$RuntimeInterruptedException;
.super Ljava/lang/RuntimeException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RuntimeInterruptedException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/InterruptedException;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/InterruptedException;

    .prologue
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
