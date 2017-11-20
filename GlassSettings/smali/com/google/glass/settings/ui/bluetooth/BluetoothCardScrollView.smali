.class public Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;
.super Lcom/google/android/glass/widget/CardScrollView;
.source "BluetoothCardScrollView.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private adapter:Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;

.field private scannedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/glass/widget/CardScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->scannedDevices:Ljava/util/List;

    .line 36
    new-instance v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;

    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->scannedDevices:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->adapter:Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;

    .line 37
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->adapter:Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    .line 38
    return-void
.end method


# virtual methods
.method public addDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "scannedDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 56
    sget-object v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Adding %s new scan results."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->scannedDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->adapter:Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->notifyDataSetChanged()V

    .line 59
    return-void
.end method

.method public discoveryFinished()V
    .locals 3

    .prologue
    .line 73
    sget-object v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Discovery finished"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->adapter:Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->discoveryFinished()V

    .line 75
    return-void
.end method

.method public getSelectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->getSelectedItemPosition()I

    move-result v0

    .line 45
    .local v0, "position":I
    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->scannedDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->scannedDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 48
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "scannedDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 66
    sget-object v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Removing %s new scan results."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->scannedDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->adapter:Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->notifyDataSetChanged()V

    .line 69
    return-void
.end method

.method public setConnectedDevices(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;>;"
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->adapter:Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;

    invoke-virtual {v0, p1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->setConnectedDevices(Ljava/util/ArrayList;)V

    .line 80
    return-void
.end method
